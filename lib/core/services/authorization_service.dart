import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_ha_dashboard/core/services/secure_storage_service.dart';
import 'package:flutter_ha_dashboard/core/utils/app_config.dart';
import 'package:flutter_ha_dashboard/service_locator.dart';

/// {@template AuthorizationService}
/// Service class used to perform authentication-related operations.
/// {@endtemplate}
class AuthorizationService {
  /// {@macro AuthorizationService}
  factory AuthorizationService({
    SecureStorageService? secureStorageService,
    FlutterAppAuth? appAuth,
    AppConfig? appConfig,
  }) {
    _instance = AuthorizationService._internal(
      secureStorageService ?? getIt<SecureStorageService>(),
      appAuth ?? FlutterAppAuth(),
      appConfig ?? getIt<AppConfig>(),
    );

    return _instance;
  }

  /// Public instance of [AuthorizationService]
  static AuthorizationService get instance => _instance;

  /// Private instance of [AuthorizationService]
  static late final AuthorizationService _instance;

  late final SecureStorageService _secureStorageService;
  late final FlutterAppAuth _appAuth;
  late final AppConfig _appConfig;

  /// {@macro AuthorizationService}
  AuthorizationService._internal(
    this._secureStorageService,
    this._appAuth,
    this._appConfig,
  );

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
