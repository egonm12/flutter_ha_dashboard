import 'package:flutter/services.dart';

import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_ha_dashboard/src/core/services/api_service.dart';
import 'package:flutter_ha_dashboard/src/core/services/secure_storage_service.dart';
import 'package:flutter_ha_dashboard/src/core/utils/app_config.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import '../../../fakes.dart';
import '../../../mocks/mocks.dart';

void main() {
  group('AuthenticationRepository', () {
    late final AuthenticationRepository authenticationRepository;
    late final SecureStorageService secureStorageService;
    late final FlutterAppAuth appAuth;
    late final AppConfig appConfig;
    late final ApiService apiService;

    const accessToken = 'access token';
    final accessTokenExpirationDate = DateTime.now().add(
      const Duration(hours: 1),
    );
    const refreshToken = 'refresh token';

    setUpAll(() {
      secureStorageService = MockSecureStorageService();
      appAuth = MockFlutterAppAuth();
      appConfig = MockAppConfig();
      apiService = MockApiService();

      authenticationRepository = AuthenticationRepository(
        secureStorageService: secureStorageService,
        appAuth: appAuth,
        appConfig: appConfig,
        apiService: apiService,
      );

      registerFallbackValue(FakeAuthorizationTokenRequest());

      when(() => appConfig.oauthRedirectUri).thenReturn('redirect_uri');
      when(() => appConfig.oauthClientId).thenReturn('client_id');
    });

    setUp(() {
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
      when(() => secureStorageService.readRefreshToken()).thenAnswer(
        (_) => Future.value(refreshToken),
      );
    });

    group('authenticate', () {
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

      test('''
      writes refresh token, access token and expiration date to secure storage 
      when request is successful''', () async {
        when(() => appAuth.authorizeAndExchangeCode(any())).thenAnswer(
          (_) => Future.value(authorizationTokenResponse),
        );

        await authenticationRepository.authenticate();

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

        expect(authenticationRepository.isAuthenticated, true);
        expect(authenticationRepository.authStateChanges(), emits(true));
      });

      test('''
      does not write refresh token, access token and expiration date to secure 
      storage when request is successful but response is null''', () async {
        when(() => appAuth.authorizeAndExchangeCode(any())).thenAnswer(
          (_) => Future.value(null),
        );

        await authenticationRepository.authenticate();

        verifyNever(
          () => secureStorageService.writeAccessToken(any()),
        );

        verifyNever(
          () => secureStorageService.writeAccessTokenExpirationDate(any()),
        );

        verifyNever(
          () => secureStorageService.writeRefreshToken(any()),
        );

        expect(authenticationRepository.isAuthenticated, false);
        expect(authenticationRepository.authStateChanges(), emits(false));
      });

      test(
          'does not write refresh token, access token and expiration date to secure storage when request is unsuccessful',
          () async {
        final error =
            PlatformException(code: 'Error', message: 'Something went wrong');
        when(() => appAuth.authorizeAndExchangeCode(any())).thenThrow(error);

        expect(
          () async => await authenticationRepository.authenticate(),
          throwsA(isA<PlatformException>()),
        );

        verifyNever(
          () => secureStorageService.writeAccessToken(any()),
        );

        verifyNever(
          () => secureStorageService.writeAccessTokenExpirationDate(any()),
        );

        verifyNever(
          () => secureStorageService.writeRefreshToken(any()),
        );

        expect(authenticationRepository.isAuthenticated, false);
        expect(authenticationRepository.authStateChanges(), emits(false));
      });
    });

    group('invalidate', () {
      group('when refresh token is stored in FlutterSecureStorage', () {
        setUpAll(() {
          when(() => secureStorageService.readRefreshToken()).thenAnswer(
            (_) => Future.value(refreshToken),
          );
          when(() => apiService.revokeRefreshToken(any())).thenAnswer(
            (_) => Future.value(),
          );
          when(() => secureStorageService.deleteAll()).thenAnswer(
            (_) => Future.value(),
          );
        });

        test('calls ApiService.revokeRefreshToken and SecureStorage.deleteAll',
            () async {
          await authenticationRepository.revokeRefreshToken();

          verify(() => apiService.revokeRefreshToken(any())).called(1);
          verify(secureStorageService.deleteAll).called(1);

          expect(authenticationRepository.isAuthenticated, false);
          expect(authenticationRepository.authStateChanges(), emits(false));
        });
      });

      group('when refresh token is not stored in FlutterSecureStorage', () {
        setUp(() {
          when(() => secureStorageService.readRefreshToken()).thenAnswer(
            (_) => Future.value(null),
          );
        });

        test('does not make any calls', () async {
          await authenticationRepository.revokeRefreshToken();

          verifyNever(() => apiService.revokeRefreshToken(any()));
          verifyNever(secureStorageService.deleteAll);
        });
      });
    });

    group('validAccessToken', () {
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
        registerFallbackValue(FakeTokenRequest());
      });

      group('when access token expiration date is not in secure storage', () {
        setUpAll(() {
          when(() => secureStorageService.readAccessTokenExpirationDate())
              .thenAnswer((_) => Future.value(null));
        });

        test('''
      returns a new access token and writes access token and expiration 
      date to secure storage when request is successful''', () async {
          when(() => secureStorageService.readAccessToken()).thenAnswer(
            (_) => Future.value(accessToken),
          );
          when(() => appAuth.token(any())).thenAnswer(
            (_) => Future.value(tokenResponse),
          );

          final validAccessToken =
              await authenticationRepository.validAccessToken;

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
              .thenAnswer(
            (_) => Future.value(
              DateTime.now().add(const Duration(hours: 1)),
            ),
          );
        });

        test('returns the access token from secure storage', () async {
          final validAccessToken =
              await authenticationRepository.validAccessToken;

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

          final validAccessToken =
              await authenticationRepository.validAccessToken;

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

          final validAccessToken =
              await authenticationRepository.validAccessToken;

          expect(validAccessToken, isNull);
        });
      });
    });
  });
}
