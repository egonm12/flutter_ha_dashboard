import 'dart:io';

import 'package:flutter/foundation.dart';

import 'package:dio/dio.dart';
import 'package:flutter_appauth/flutter_appauth.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/services/secure_storage_service.dart';
import 'package:flutter_ha_dashboard/src/core/utils/app_config.dart';

class AuthenticationRepository {
  /// {@macro AuthenticationRepository}
  factory AuthenticationRepository({
    SecureStorageService? secureStorageService,
    FlutterAppAuth? appAuth,
    AppConfig? appConfig,
  }) {
    _instance = AuthenticationRepository._internal(
      secureStorageService ?? getIt<SecureStorageService>(),
      appAuth ?? FlutterAppAuth(),
      appConfig ?? getIt<AppConfig>(),
    );

    return _instance;
  }

  /// Public instance of [AuthenticationRepository]
  static AuthenticationRepository get instance => _instance;

  /// Private instance of [AuthenticationRepository]
  static late final AuthenticationRepository _instance;

  late final SecureStorageService _secureStorageService;
  late final FlutterAppAuth _appAuth;
  late final AppConfig _appConfig;

  /// {@macro AuthenticationRepository}
  AuthenticationRepository._internal(
    this._secureStorageService,
    this._appAuth,
    this._appConfig,
  );

  Future<void> authenticate() async {
    try {
      final AuthorizationTokenResponse? response =
          await _appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          _appConfig.oauthClientId,
          _appConfig.oauthRedirectUri,
          issuer: 'https://meijers-hassio.duckdns.org/auth/authorize',
          serviceConfiguration: const AuthorizationServiceConfiguration(
            tokenEndpoint: 'https://meijers-hassio.duckdns.org/auth/token',
            authorizationEndpoint:
                'https://meijers-hassio.duckdns.org/auth/authorize',
          ),
        ),
      );

      if (response == null) return;

      _secureStorageService.writeRefreshToken(response.refreshToken!);
      _secureStorageService.writeAccessToken(response.accessToken!);
      _secureStorageService.writeAccessTokenExpirationDate(
        response.accessTokenExpirationDateTime!,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> revokeRefreshToken() async {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: 'https://meijers-hassio.duckdns.org',
        headers: <String, String>{
          HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
          HttpHeaders.authorizationHeader: 'Bearer $validAccessToken',
        },
      ),
    );

    try {
      final token = await refreshToken;

      if (token == null) return;

      await dio.post<Object>(
        '/auth/token',
        data: <String, String>{
          'token': token,
          'action': 'revoke',
        },
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<String?> get validAccessToken async {
    final DateTime? expirationDate =
        await _secureStorageService.readAccessTokenExpirationDate();

    if (expirationDate != null &&
        DateTime.now().isBefore(
          expirationDate.subtract(
            const Duration(minutes: 1),
          ),
        )) {
      return _secureStorageService.readAccessToken();
    }

    return await _refreshAccessToken();
  }

  Future<String?> get refreshToken async =>
      await _secureStorageService.readRefreshToken();

  /// [_refreshAccessToken]
  /// If a refresh token is available it triggers a request to retrieve and
  /// store new tokens. Returns an access token.
  Future<String?> _refreshAccessToken() async {
    final String? refreshToken = await _secureStorageService.readRefreshToken();
    if (refreshToken == null) return null;

    final TokenResponse? response = await _appAuth.token(
      TokenRequest(
        _appConfig.oauthClientId,
        _appConfig.oauthRedirectUri,
        refreshToken: refreshToken,
        issuer: 'https://meijers-hassio.duckdns.org/auth/authorize',
        serviceConfiguration: const AuthorizationServiceConfiguration(
          tokenEndpoint: 'https://meijers-hassio.duckdns.org/auth/token',
          authorizationEndpoint:
              'https://meijers-hassio.duckdns.org/auth/authorize',
        ),
      ),
    );

    if (response?.accessToken == null ||
        response?.accessTokenExpirationDateTime == null) return null;

    await _secureStorageService.writeAccessToken(response!.accessToken!);
    await _secureStorageService.writeAccessTokenExpirationDate(
      response.accessTokenExpirationDateTime!,
    );

    return response.accessToken;
  }
}
