import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_ha_dashboard/src/core/services/shared_preferences_service.dart';
import '../../mocks/mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('SharedPreferencesService', () {
    late final SharedPreferences sharedPreferences;
    late final SharedPreferencesService sharedPreferencesService;

    setUpAll(() async {
      sharedPreferences = MockSharedPreferences();

      when(() => sharedPreferences.setString(any(), any())).thenAnswer(
        (_) => Future.value(true),
      );
      when(() => sharedPreferences.setBool(any(), any())).thenAnswer(
        (_) => Future.value(true),
      );

      await SharedPreferencesService(
        sharedPreferences: sharedPreferences,
      ).init();

      sharedPreferencesService = SharedPreferencesService.instance;
    });

    group('Given the init callback', () {
      test('Then it returns the home assistant url to the stream value',
          () async {
        await expectLater(
          sharedPreferencesService.homeAssistantUrlStream,
          emits(''),
        );
      });
    });

    group('homeAssistantUrl', () {
      const homeAssistantUrl = 'foo bar';

      test('returns an empty string when none is set', () {
        final _homeAssistantUrl = sharedPreferencesService.homeAssistantUrl;

        expect(_homeAssistantUrl, '');
      });

      test(
          'Given the home assistant url'
          'When a new value is set'
          'Then it saves the the value to shared preferences'
          'And it updates home assistant url stream', () async {
        sharedPreferencesService.homeAssistantUrl = homeAssistantUrl;

        verify(
          () => sharedPreferences.setString(
            sharedPreferencesService.homeAssistantUrlKey,
            homeAssistantUrl,
          ),
        );

        await expectLater(
          sharedPreferencesService.homeAssistantUrlStream,
          emits(homeAssistantUrl),
        );
      });

      test(
          'calls SharedPreferences.getString with the correct key when calling getter',
          () {
        sharedPreferencesService.homeAssistantUrl;

        verify(
          () => sharedPreferences.getString(
            sharedPreferencesService.homeAssistantUrlKey,
          ),
        );
      });
    });

    group('firstRun', () {
      const bool firstRun = true;

      test('returns true when none is set', () {
        final _firstRun = sharedPreferencesService.firstRun;

        expect(_firstRun, true);
      });

      test(
          'calls SharedPreferences.setBool with the correct key and value when calling setter',
          () {
        sharedPreferencesService.firstRun = firstRun;

        verify(
          () => sharedPreferences.setBool(
            sharedPreferencesService.firstRunKey,
            firstRun,
          ),
        );
      });

      test(
          'calls SharedPreferences.getBool with the correct key when calling getter',
          () {
        sharedPreferencesService.firstRun;

        verify(
          () => sharedPreferences.getBool(sharedPreferencesService.firstRunKey),
        );
      });
    });

    group('themeMode', () {
      const ThemeMode themeMode = ThemeMode.light;

      test('returns ThemeMode.system when none is set', () {
        final _themeMode = sharedPreferencesService.themeMode;

        expect(_themeMode, ThemeMode.system);
      });

      test(
          'calls SharedPreferences.setString with the correct key and value when calling setter',
          () {
        sharedPreferencesService.themeMode = themeMode;

        verify(
          () => sharedPreferences.setString(
            sharedPreferencesService.themeModeKey,
            themeMode.name,
          ),
        );
      });

      test(
          'calls SharedPreferences.getString with the correct key when calling getter',
          () {
        sharedPreferencesService.themeMode;

        verify(
          () => sharedPreferences
              .getString(sharedPreferencesService.themeModeKey),
        );
      });
    });
  });
}
