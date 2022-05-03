import 'package:flutter/cupertino.dart';

import 'package:flutter_appauth/flutter_appauth.dart';

import 'package:flutter_ha_dashboard/core/services/secure_storage_service.dart';
import 'package:flutter_ha_dashboard/core/utils/app_config.dart';
import 'package:flutter_ha_dashboard/service_locator.dart';

/// {@template AuthenticationService}
/// Service class used to perform authentication-related operations.
/// {@endtemplate}
class AuthenticationService {
  /// {@macro AuthenticationService}
  factory AuthenticationService({
    SecureStorageService? secureStorageService,
    FlutterAppAuth? appAuth,
    AppConfig? appConfig,
  }) {
    _instance = AuthenticationService._internal(
      secureStorageService ?? getIt<SecureStorageService>(),
      appAuth ?? FlutterAppAuth(),
      appConfig ?? getIt<AppConfig>(),
    );

    return _instance;
  }

  /// {@macro SecureStorageService}
  AuthenticationService._internal(
    this._secureStorageService,
    this._appAuth,
    this._appConfig,
  );

  static AuthenticationService get instance => _instance;

  /// {@macro AuthenticationService}
  static late AuthenticationService _instance;
  late final SecureStorageService _secureStorageService;
  late final FlutterAppAuth _appAuth;
  late final AppConfig _appConfig;

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
}
