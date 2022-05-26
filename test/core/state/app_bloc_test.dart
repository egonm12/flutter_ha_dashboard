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

    setUpAll(() {
      sharedPreferencesService = MockSharedPreferencesService();
      secureStorageService = MockSecureStorageService();
    });

    blocTest<AppBloc, AppState>(
      '''emits [AppState.initialized] when app initializes and deletes everything 
      in secure storage when app runs the first time''',
      setUp: () {
        when(() => sharedPreferencesService.firstRun).thenReturn(true);
        when(secureStorageService.deleteAll).thenAnswer((_) => Future.value());
      },
      build: createAppBloc,
      act: (appBloc) => appBloc.add(const AppEvent.initializeApp()),
      expect: () => [const AppState.initialized()],
      verify: (_) {
        verify(secureStorageService.deleteAll).called(1);
      },
    );

    blocTest<AppBloc, AppState>(
      '''emits [AppState.initialized] when app initializes and does not delete
      anything in secure storage when app does not run the first time''',
      setUp: () {
        when(() => sharedPreferencesService.firstRun).thenReturn(false);
        when(secureStorageService.deleteAll).thenAnswer((_) => Future.value());
      },
      build: createAppBloc,
      act: (appBloc) => appBloc.add(const AppEvent.initializeApp()),
      expect: () => [const AppState.initialized()],
      verify: (_) {
        verifyNever(secureStorageService.deleteAll);
      },
    );
  });
}
