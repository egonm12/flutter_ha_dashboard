import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:rxdart/rxdart.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/services/api_service.dart';
import 'package:flutter_ha_dashboard/src/core/services/secure_storage_service.dart';
import 'package:flutter_ha_dashboard/src/utils/app_config.dart';

class AuthenticationRepository {
  /// {@macro AuthenticationRepository}
  factory AuthenticationRepository({
    SecureStorageService? secureStorageService,
    FlutterAppAuth? appAuth,
    AppConfig? appConfig,
    ApiService? apiService,
  }) {
    _authState = BehaviorSubject<bool>.seeded(false);

    _instance = AuthenticationRepository._internal(
      secureStorageService ?? serviceLocator<SecureStorageService>(),
      appAuth ?? FlutterAppAuth(),
      appConfig ?? serviceLocator<AppConfig>(),
      apiService ?? serviceLocator<ApiService>(),
    );

    return _instance;
  }

  /// Public instance of [AuthenticationRepository]
  static AuthenticationRepository get instance => _instance;

  /// Private instance of [AuthenticationRepository]
  static late final AuthenticationRepository _instance;

  static late final BehaviorSubject<bool> _authState;

  late final SecureStorageService _secureStorageService;
  late final FlutterAppAuth _appAuth;
  late final AppConfig _appConfig;
  late final ApiService _apiService;

  /// {@macro AuthenticationRepository}
  AuthenticationRepository._internal(
    this._secureStorageService,
    this._appAuth,
    this._appConfig,
    this._apiService,
  );

  Stream<bool> authStateChanges() => _authState.stream;
  bool get isAuthenticated => _authState.value;

  Future<void> dispose() async => await _authState.close();

  /// Callback used to authenticate a user. Calls [FlutterAppAuth.authorizeAndExchangeCode]
  /// and calls [SecureStorageService] to save the refresh token, access token
  /// and access token expiration date on success.
  ///
  /// https://developers.home-assistant.io/docs/auth_api/#authorize
  Future<void> authenticate() async {
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

    if (response == null) {
      _authState.value = false;
      return;
    }

    _secureStorageService.writeRefreshToken(response.refreshToken!);
    _secureStorageService.writeAccessToken(response.accessToken!);
    _secureStorageService.writeAccessTokenExpirationDate(
      response.accessTokenExpirationDateTime!,
    );

    _authState.value = true;
  }

  /// Revokes the refresh token and all access tokens
  /// Calls [ApiService.revokeRefreshToken] and [SecureStorageService.deleteAll]
  /// when refresh token is available.
  Future<void> revokeRefreshToken() async {
    try {
      final token = await _secureStorageService.readRefreshToken();

      if (token == null) return;

      await _apiService.revokeRefreshToken(<String, String>{
        'token': token,
        'action': 'revoke',
      });

      await _secureStorageService.deleteAll();

      _authState.value = false;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  /// Returns a valid access token.
  /// Either returns the access token from [SecureStorageService] if the access
  /// token is not expired.
  /// In other cases it retrieves a new access token by using the refresh token.
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
