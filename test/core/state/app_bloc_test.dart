import 'package:flutter/material.dart';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_ha_dashboard/src/core/state/app_bloc.dart';
import '../../mocks/mocks.dart';

void main() {
  group('AppBloc', () {
    late final MockSharedPreferencesService sharedPreferencesService;
    late final MockSecureStorageService secureStorageService;
    AppBloc createAppBloc() => AppBloc(
          secureStorageService: secureStorageService,
          sharedPreferencesService: sharedPreferencesService,
        );

    late final AppState initState;
    const homeAssistantUrl = 'http://localhost:3000';
    const themeMode = ThemeMode.light;

    setUpAll(() {
      sharedPreferencesService = MockSharedPreferencesService();
      secureStorageService = MockSecureStorageService();

      when(() => sharedPreferencesService.homeAssistantUrl).thenReturn(
        homeAssistantUrl,
      );
      when(() => sharedPreferencesService.themeMode).thenReturn(themeMode);

      initState = createAppBloc().state;
    });

    test('returns the correct init state', () {
      expect(
        initState,
        const AppState(
          appStatus: AppStatus.uninitialized(),
          appSettings: AppSettings(
            homeAssistantUrl: homeAssistantUrl,
            themeMode: themeMode,
          ),
        ),
      );
    });

    blocTest<AppBloc, AppState>(
      'Given the app is initialized'
      'When the app runs for the first time'
      'Then it emits [AppStatus.initialized()]'
      'And deletes all keys with associated values from secure storage',
      setUp: () {
        when(() => sharedPreferencesService.firstRun).thenReturn(true);
        when(secureStorageService.deleteAll).thenAnswer((_) => Future.value());
      },
      build: createAppBloc,
      act: (appBloc) => appBloc.add(const AppEvent.initializeApp()),
      expect: () => [
        initState.copyWith(
          appStatus: const AppStatus.initialized(),
        ),
      ],
      verify: (_) {
        verify(secureStorageService.deleteAll).called(1);
      },
    );

    blocTest<AppBloc, AppState>(
      'Given the app does not run for the first time'
      'When the app is initialized'
      'Then it emits [AppStatus.initialized()]',
      setUp: () {
        when(() => sharedPreferencesService.firstRun).thenReturn(false);
        when(secureStorageService.deleteAll).thenAnswer((_) => Future.value());
      },
      build: createAppBloc,
      act: (appBloc) => appBloc.add(const AppEvent.initializeApp()),
      expect: () => [
        initState.copyWith(
          appStatus: const AppStatus.initialized(),
        ),
      ],
      verify: (_) {
        verifyNever(secureStorageService.deleteAll);
      },
    );

    blocTest<AppBloc, AppState>(
      'When the theme mode is changed to [ThemeMode.dark]'
      'Then it emits [AppSettings(themeMode. ThemeMode.dark)]'
      'And it updates the theme mode in shared preferences to [ThemeMode.dark]',
      build: createAppBloc,
      act: (appBloc) => appBloc.add(
        const AppEvent.changeThemeMode(ThemeMode.dark),
      ),
      expect: () => [
        initState.copyWith(
          appSettings: initState.appSettings.copyWith(
            themeMode: ThemeMode.dark,
          ),
        ),
      ],
      verify: (_) {
        verify(() => sharedPreferencesService.themeMode = ThemeMode.dark)
            .called(1);
      },
    );

    blocTest<AppBloc, AppState>(
      'Given the theme mode is [ThemeMode.light]'
      'When the theme mode is toggled twice'
      'Then it emits [AppSettings(themeMode. ThemeMode.dark)]'
      'And it updates the theme mode in shared preferences to [ThemeMode.dark]'
      'And it emits [AppSettings(themeMode. ThemeMode.light)]'
      'And it updates the theme mode in shared preferences to [ThemeMode.light]',
      setUp: () {
        when(() => sharedPreferencesService.themeMode).thenReturn(
          ThemeMode.light,
        );
      },
      build: createAppBloc,
      act: (appBloc) {
        appBloc.add(const AppEvent.toggleThemeMode());
        appBloc.add(const AppEvent.toggleThemeMode());
      },
      expect: () => [
        initState.copyWith(
          appSettings: initState.appSettings.copyWith(
            themeMode: ThemeMode.dark,
          ),
        ),
        initState.copyWith(
          appSettings: initState.appSettings.copyWith(
            themeMode: ThemeMode.light,
          ),
        ),
      ],
      verify: (_) {
        verify(() => sharedPreferencesService.themeMode = ThemeMode.dark)
            .called(1);
        verify(() => sharedPreferencesService.themeMode = ThemeMode.light)
            .called(1);
      },
    );

    blocTest<AppBloc, AppState>(
      'Given the home assistant url is not set'
      'When the home assistant url gets changed to $homeAssistantUrl'
      'Then it emits [AppSettings(homeAssistantUrl: $homeAssistantUrl)]'
      'And it updates the home assistant url in shared preferences',
      setUp: () {
        when(() => sharedPreferencesService.homeAssistantUrl).thenReturn('');
      },
      build: createAppBloc,
      act: (appBloc) {
        appBloc.add(const AppEvent.updateHomeAssistantUrl(homeAssistantUrl));
      },
      expect: () => [
        initState.copyWith(
          appSettings: initState.appSettings.copyWith(
            homeAssistantUrl: homeAssistantUrl,
          ),
        ),
      ],
      verify: (_) {
        verify(() => sharedPreferencesService.homeAssistantUrl =
            homeAssistantUrl).called(1);
      },
    );
  });
}
