import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_ha_dashboard/src/core/services/secure_storage_service.dart';
import '../../mocks/mocks.dart';

void main() {
  group('SecureStorageService', () {
    late final SecureStorageService secureStorageService;
    late final MockFlutterSecureStorage flutterSecureStorage;
    late final MockSharedPreferencesService sharedPreferencesService;

    setUpAll(() {
      flutterSecureStorage = MockFlutterSecureStorage();
      sharedPreferencesService = MockSharedPreferencesService();

      when(() => sharedPreferencesService.homeAssistantUrlStream).thenAnswer(
        (_) => Stream.value('http://localhost:3000'),
      );

      secureStorageService = SecureStorageService(
        flutterSecureStorage: flutterSecureStorage,
        sharedPreferencesService: sharedPreferencesService,
      );
    });

    test(
        'Given the constructor'
        'When the home assistant url stream returns a string that is empty'
        'Then it deletes all values in secure storage', () async {
      final flutterSecureStorage = MockFlutterSecureStorage();
      final sharedPreferencesService = MockSharedPreferencesService();

      when(flutterSecureStorage.deleteAll).thenAnswer(
        (_) => Future.value(),
      );
      when(() => sharedPreferencesService.homeAssistantUrlStream).thenAnswer(
        (_) => Stream.value(''),
      );

      SecureStorageService(
        flutterSecureStorage: flutterSecureStorage,
        sharedPreferencesService: sharedPreferencesService,
      );

      await Future<void>.delayed(const Duration(milliseconds: 200));

      verify(
        flutterSecureStorage.deleteAll,
      ).called(1);
    });

    test(
        'Given the constructor'
        'When the home assistant url stream returns a string that is not empty'
        'Then nothing happens', () async {
      final flutterSecureStorage = MockFlutterSecureStorage();
      final sharedPreferencesService = MockSharedPreferencesService();

      when(flutterSecureStorage.deleteAll).thenAnswer(
        (_) => Future.value(),
      );
      when(() => sharedPreferencesService.homeAssistantUrlStream).thenAnswer(
        (_) => Stream.value('http://localhost:3000'),
      );

      SecureStorageService(
        flutterSecureStorage: flutterSecureStorage,
        sharedPreferencesService: sharedPreferencesService,
      );

      await Future<void>.delayed(const Duration(milliseconds: 200));

      verifyNever(flutterSecureStorage.deleteAll);
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

    group('deleteAll', () {
      test(
          'calls FlutterSecureStorage.deleteAll to delete all keys with associated values',
          () async {
        when(flutterSecureStorage.deleteAll).thenAnswer(
          (_) => Future.value(),
        );

        await secureStorageService.deleteAll();

        verify(flutterSecureStorage.deleteAll).called(1);
      });
    });
  });
}
