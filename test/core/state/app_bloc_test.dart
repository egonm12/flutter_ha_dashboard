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
    const homeAssistantUrl = 'home assistant url';
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
          appSettings: AppInfo(
            homeAssistantUrl: homeAssistantUrl,
            themeMode: themeMode,
          ),
        ),
      );
    });

    blocTest<AppBloc, AppState>(
      '''emits [AppStatus.initialized] when app initializes and deletes everything 
      in secure storage when app runs the first time''',
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
      '''emits [AppStatus.initialized] when app initializes and does not delete
      anything in secure storage when app does not run the first time''',
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
      '''emits [AppSettings(themeMode: ThemeMode.dark)] when theme is changed to
      ThemeMode.dark and saves it in shared preferences''',
      setUp: () {},
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
  });
}
