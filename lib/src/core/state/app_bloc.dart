import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/services/secure_storage_service.dart';
import 'package:flutter_ha_dashboard/src/core/services/shared_preferences_service.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    SharedPreferencesService? sharedPreferencesService,
    SecureStorageService? secureStorageService,
  })  : _sharedPreferencesService = sharedPreferencesService ??
            serviceLocator<SharedPreferencesService>(),
        _secureStorageService =
            secureStorageService ?? serviceLocator<SecureStorageService>(),
        super(
          AppState(
            appStatus: const AppStatus.uninitialized(),
            appSettings: AppSettings(
              homeAssistantUrl: (sharedPreferencesService ??
                      serviceLocator<SharedPreferencesService>())
                  .homeAssistantUrl,
              themeMode: (sharedPreferencesService ??
                      serviceLocator<SharedPreferencesService>())
                  .themeMode,
            ),
          ),
        ) {
    on<_InitializeApp>(_initializeApp);
    on<_ChangeThemeMode>(_changeThemeMode);
  }

  final SharedPreferencesService _sharedPreferencesService;
  final SecureStorageService _secureStorageService;

  /// Calls [_cleanIfFirstUseAfterUninstall] and emits [AppStatus.initialized]
  /// when done.
  Future<void> _initializeApp(
    _InitializeApp event,
    Emitter<AppState> emit,
  ) async {
    try {
      await _cleanIfFirstUseAfterUninstall();
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      emit(
        state.copyWith(
          appStatus: const AppStatus.initialized(),
        ),
      );
    }
  }

  void _changeThemeMode(
    _ChangeThemeMode event,
    Emitter<AppState> emit,
  ) {
    final _themeMode = event.themeMode;

    _sharedPreferencesService.themeMode = _themeMode;

    emit(
      state.copyWith(
        appSettings: state.appSettings.copyWith(
          themeMode: _themeMode,
        ),
      ),
    );
  }

  /// Checks [SharedPreferencesService.firstRun] if the application is running
  /// for the first time since it is installed. If this check returns true it
  /// calls [SecureStorageService.deleteAll] to clear all stored values and sets
  /// [SharedPreferencesService.firstRun] to false.
  Future<void> _cleanIfFirstUseAfterUninstall() async {
    if (_sharedPreferencesService.firstRun) {
      await _secureStorageService.deleteAll();
      _sharedPreferencesService.firstRun = false;
    }
  }
}
