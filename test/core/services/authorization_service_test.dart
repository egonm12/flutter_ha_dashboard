import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_ha_dashboard/core/services/authorization_service.dart';
import 'package:flutter_ha_dashboard/core/services/secure_storage_service.dart';
import 'package:flutter_ha_dashboard/core/utils/app_config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../fakes.dart';
import '../../mocks.dart';

void main() {
  group('AuthorizationService', () {
    late final AuthorizationService authorizationService;
    late final SecureStorageService secureStorageService;
    late final FlutterAppAuth appAuth;
    late final AppConfig appConfig;

    const accessToken = 'access token';
    final accessTokenExpirationDate =
        DateTime.now().add(const Duration(hours: 1));
    const refreshToken = 'refresh token';

    final TokenResponse tokenResponse = TokenResponse(
      accessToken,
      refreshToken,
      accessTokenExpirationDate,
      null,
      null,
      null,
      null,
    );

    setUpAll(() {
      secureStorageService = MockSecureStorageService();
      appAuth = MockFlutterAppAuth();
      appConfig = MockAppConfig();
      authorizationService = AuthorizationService(
        secureStorageService: secureStorageService,
        appAuth: appAuth,
        appConfig: appConfig,
      );

      registerFallbackValue(FakeTokenRequest());

      when(() => appConfig.oauthRedirectUri).thenReturn('redirect_uri');
      when(() => appConfig.oauthClientId).thenReturn('client_id');
      when(() => secureStorageService.writeAccessToken(any())).thenAnswer(
        (_) => Future.value(),
      );
      when(() => secureStorageService.writeAccessTokenExpirationDate(any()))
          .thenAnswer(
        (_) => Future.value(),
      );
      when(() => secureStorageService.readRefreshToken()).thenAnswer(
        (_) => Future.value(refreshToken),
      );
    });

    group('validAccessToken', () {
      group('when access token expiration date is not in secure storage', () {
        setUpAll(() {
          when(() => secureStorageService.readAccessTokenExpirationDate())
              .thenAnswer((_) => Future.value(null));
        });

        test('''
      returns a new access token and writes access token and expiration 
      date to secure storage when request is successful''', () async {
          when(() => appAuth.token(any())).thenAnswer(
            (_) => Future.value(tokenResponse),
          );

          final validAccessToken = await authorizationService.validAccessToken;

          expect(validAccessToken, accessToken);

          verify(
            () => secureStorageService.writeAccessToken(accessToken),
          ).called(1);

          verify(
            () => secureStorageService
                .writeAccessTokenExpirationDate(accessTokenExpirationDate),
          ).called(1);
        });
      });

      group('when access token in secure storage is not expired', () {
        setUpAll(() {
          when(() => secureStorageService.readAccessTokenExpirationDate())
              .thenAnswer((_) => Future.value(
                    DateTime.now().add(const Duration(hours: 1)),
                  ));
          when(() => secureStorageService.readAccessToken())
              .thenAnswer((_) => Future.value(accessToken));
        });

        test('returns the access token from secure storage', () async {
          final validAccessToken = await authorizationService.validAccessToken;

          expect(validAccessToken, accessToken);

          verify(
            () => secureStorageService.readAccessToken(),
          ).called(1);
        });
      });

      group('when access token in secure storage is expired', () {
        setUpAll(() {
          when(() => secureStorageService.readAccessTokenExpirationDate())
              .thenAnswer((_) => Future.value(
                    DateTime.now().subtract(const Duration(hours: 1)),
                  ));
        });

        test('''
      returns a new access token and writes access token and expiration 
      date to secure storage when request is successful''', () async {
          when(() => appAuth.token(any())).thenAnswer(
            (_) => Future.value(tokenResponse),
          );

          final validAccessToken = await authorizationService.validAccessToken;

          expect(validAccessToken, accessToken);

          verify(
            () => secureStorageService.writeAccessToken(accessToken),
          ).called(1);

          verify(
            () => secureStorageService
                .writeAccessTokenExpirationDate(accessTokenExpirationDate),
          ).called(1);
        });

        test('returns null when request is successful but response is null',
            () async {
          when(() => appAuth.token(any())).thenAnswer(
            (_) => Future.value(null),
          );

          final validAccessToken = await authorizationService.validAccessToken;

          expect(validAccessToken, isNull);
        });
      });
    });
  });
}
