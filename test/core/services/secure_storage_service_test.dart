import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_ha_dashboard/core/services/secure_storage_service.dart';
import '../../mocks.dart';

void main() {
  group('SecureStorageService', () {
    late final SecureStorageService secureStorageService;
    late final FlutterSecureStorage flutterSecureStorage;

    setUpAll(() {
      flutterSecureStorage = MockFlutterSecureStorage();
      secureStorageService = SecureStorageService(
        flutterSecureStorage: flutterSecureStorage,
      );
    });

    group('readAccessToken', () {
      test('returns an access token when a value is stored in secure storage',
          () async {
        const token = 'token';
        when(
          () => flutterSecureStorage.read(key: any(named: 'key')),
        ).thenAnswer((_) => Future.value(token));

        expect(await secureStorageService.readAccessToken(), token);

        verify(
          () => flutterSecureStorage.read(
            key: SecureStorageService.accessTokenKey,
          ),
        ).called(1);
      });

      test('returns null when no value is stored in secure storage', () async {
        when(
          () => flutterSecureStorage.read(key: any(named: 'key')),
        ).thenAnswer(
          (_) => Future.value(null),
        );

        expect(await secureStorageService.readAccessToken(), isNull);

        verify(
          () => flutterSecureStorage.read(
            key: SecureStorageService.accessTokenKey,
          ),
        ).called(1);
      });
    });

    group('writeAccessToken', () {
      test(
          'calls FlutterSecureStorage.write with the access token key and value',
          () async {
        const token = 'token';
        when(
          () => flutterSecureStorage.write(
            key: SecureStorageService.accessTokenKey,
            value: token,
          ),
        ).thenAnswer((_) => Future.value());

        await secureStorageService.writeAccessToken(token);

        verify(
          () => flutterSecureStorage.write(
            key: SecureStorageService.accessTokenKey,
            value: token,
          ),
        ).called(1);
      });
    });

    group('readAccessTokenExpirationDate', () {
      test(
          'returns an expiration date for the access token when a value is stored in secure storage',
          () async {
        final date = DateTime.now();
        final dateString = date.toIso8601String();

        when(
          () => flutterSecureStorage.read(key: any(named: 'key')),
        ).thenAnswer((_) => Future.value(dateString));

        expect(
            await secureStorageService.readAccessTokenExpirationDate(), date);

        verify(
          () => flutterSecureStorage.read(
            key: SecureStorageService.accessTokenExpirationDateKey,
          ),
        ).called(1);
      });

      test('returns null when no value is stored in secure storage', () async {
        when(
          () => flutterSecureStorage.read(key: any(named: 'key')),
        ).thenAnswer(
          (_) => Future.value(null),
        );

        expect(
            await secureStorageService.readAccessTokenExpirationDate(), isNull);

        verify(
          () => flutterSecureStorage.read(
            key: SecureStorageService.accessTokenExpirationDateKey,
          ),
        ).called(1);
      });
    });

    group('writeAccessTokenExpirationDate', () {
      test(
          'calls FlutterSecureStorage.write with the expiration date access token key and value',
          () async {
        final date = DateTime.now();

        when(
          () => flutterSecureStorage.write(
            key: SecureStorageService.accessTokenExpirationDateKey,
            value: date.toIso8601String(),
          ),
        ).thenAnswer((_) => Future.value());

        await secureStorageService.writeAccessTokenExpirationDate(date);

        verify(
          () => flutterSecureStorage.write(
            key: SecureStorageService.accessTokenExpirationDateKey,
            value: date.toIso8601String(),
          ),
        ).called(1);
      });
    });

    group('readRefreshToken', () {
      test('returns a refresh token when a value is stored in secure storage',
          () async {
        const token = 'token';
        when(
          () => flutterSecureStorage.read(key: any(named: 'key')),
        ).thenAnswer((_) => Future.value(token));

        expect(await secureStorageService.readRefreshToken(), token);

        verify(
          () => flutterSecureStorage.read(
            key: SecureStorageService.refreshTokenKey,
          ),
        ).called(1);
      });

      test('returns null when no value is stored in secure storage', () async {
        when(
          () => flutterSecureStorage.read(key: any(named: 'key')),
        ).thenAnswer(
          (_) => Future.value(null),
        );

        expect(await secureStorageService.readRefreshToken(), isNull);

        verify(
          () => flutterSecureStorage.read(
            key: SecureStorageService.refreshTokenKey,
          ),
        ).called(1);
      });
    });

    group('writeRefreshToken', () {
      test(
          'calls FlutterSecureStorage.write with the refresh token key and value',
          () async {
        const token = 'token';
        when(
          () => flutterSecureStorage.write(
            key: SecureStorageService.refreshTokenKey,
            value: token,
          ),
        ).thenAnswer((_) => Future.value());

        await secureStorageService.writeRefreshToken(token);

        verify(
          () => flutterSecureStorage.write(
            key: SecureStorageService.refreshTokenKey,
            value: token,
          ),
        ).called(1);
      });
    });
  });
}
