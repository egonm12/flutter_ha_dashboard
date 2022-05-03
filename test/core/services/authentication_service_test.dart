import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_ha_dashboard/core/services/authentication_service.dart';
import 'package:flutter_ha_dashboard/core/services/secure_storage_service.dart';
import 'package:flutter_ha_dashboard/core/utils/app_config.dart';
import '../../fakes.dart';
import '../../mocks.dart';

void main() {
  group('AuthenticationService', () {
    late final AuthenticationService authenticationService;
    late final SecureStorageService secureStorageService;
    late final FlutterAppAuth appAuth;
    late final AppConfig appConfig;

    const accessToken = 'access token';
    final accessTokenExpirationDate =
        DateTime.now().add(const Duration(hours: 1));
    const refreshToken = 'refresh token';

    final AuthorizationTokenResponse authorizationTokenResponse =
        AuthorizationTokenResponse(
      accessToken,
      refreshToken,
      accessTokenExpirationDate,
      null,
      null,
      null,
      null,
      null,
    );

    setUpAll(() {
      secureStorageService = MockSecureStorageService();
      appAuth = MockFlutterAppAuth();
      appConfig = MockAppConfig();
      authenticationService = AuthenticationService(
        secureStorageService: secureStorageService,
        appAuth: appAuth,
        appConfig: appConfig,
      );

      registerFallbackValue(FakeAuthorizationTokenRequest());

      when(() => appConfig.oauthRedirectUri).thenReturn('redirect_uri');
      when(() => appConfig.oauthClientId).thenReturn('client_id');
      when(() => secureStorageService.writeAccessToken(any())).thenAnswer(
        (_) => Future.value(),
      );
      when(() => secureStorageService.writeAccessTokenExpirationDate(any()))
          .thenAnswer(
        (_) => Future.value(),
      );
      when(() => secureStorageService.writeRefreshToken(any())).thenAnswer(
        (_) => Future.value(),
      );
    });

    group('authenticate', () {
      test('''
      writes refresh token, access token and expiration date to secure storage 
      when request is successful''', () async {
        when(() => appAuth.authorizeAndExchangeCode(any())).thenAnswer(
          (_) => Future.value(authorizationTokenResponse),
        );

        await authenticationService.authenticate();

        verify(
          () => secureStorageService.writeAccessToken(accessToken),
        ).called(1);

        verify(
          () => secureStorageService
              .writeAccessTokenExpirationDate(accessTokenExpirationDate),
        ).called(1);

        verify(
          () => secureStorageService.writeRefreshToken(refreshToken),
        ).called(1);
      });

      test('''
      does not write refresh token, access token and expiration date to secure 
      storage when request is successful but response is null''', () async {
        when(() => appAuth.authorizeAndExchangeCode(any())).thenAnswer(
          (_) => Future.value(null),
        );

        await authenticationService.authenticate();

        verifyNever(
          () => secureStorageService.writeAccessToken(any()),
        );

        verifyNever(
          () => secureStorageService.writeAccessTokenExpirationDate(any()),
        );

        verifyNever(
          () => secureStorageService.writeRefreshToken(any()),
        );
      });

      test('''
      does not write refresh token, access token and expiration date to secure 
      storage when request is unsuccessful''', () async {
        const error = 'Something went wrong';
        when(() => appAuth.authorizeAndExchangeCode(any())).thenThrow(error);

        await authenticationService.authenticate();

        verifyNever(
          () => secureStorageService.writeAccessToken(any()),
        );

        verifyNever(
          () => secureStorageService.writeAccessTokenExpirationDate(any()),
        );

        verifyNever(
          () => secureStorageService.writeRefreshToken(any()),
        );
      });
    });
  });
}
