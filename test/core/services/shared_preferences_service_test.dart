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

      await SharedPreferencesService(
        sharedPreferences: sharedPreferences,
      ).init();

      sharedPreferencesService = SharedPreferencesService.instance;
    });

    group('homeAssistantUrl', () {
      const homeAssistantUrl = 'foo bar';

      test(
          'calls SharedPreferences.setString with the correct key and value when calling setter',
          () {
        sharedPreferencesService.homeAssistantUrl = homeAssistantUrl;

        verify(
          () => sharedPreferences.setString(
            sharedPreferencesService.homeAssistantUrlKey,
            homeAssistantUrl,
          ),
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
  });
}
