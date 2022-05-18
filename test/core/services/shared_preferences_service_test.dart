import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_ha_dashboard/src/core/services/shared_preferences_service.dart';
import '../../mocks.dart';

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
              'home_assistant_url', homeAssistantUrl),
        );
      });

      test(
          'calls SharedPreferences.getString with the correct key when calling getter',
          () {
        sharedPreferencesService.homeAssistantUrl;

        verify(
          () => sharedPreferences.getString('home_assistant_url'),
        );
      });
    });
  });
}
