import 'package:flutter/material.dart';

import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// {@template SharedPreferencesService}
/// Service class used as a bridge to communicate with [SharedPreferences].
/// {@endtemplate}
class SharedPreferencesService {
  /// {@macro SharedPreferencesService}
  factory SharedPreferencesService({
    SharedPreferences? sharedPreferences,
  }) {
    _instance = SharedPreferencesService._internal(sharedPreferences);

    return _instance;
  }

  /// {@macro SecureStorageService}
  SharedPreferencesService._internal(this._sharedPreferences);

  /// Public instance of [SharedPreferencesService]
  static SharedPreferencesService get instance => _instance;

  /// Private instance of [SharedPreferencesService]
  static late SharedPreferencesService _instance;
  late SharedPreferences? _sharedPreferences;

  /// Creates an instance of [SharedPreferences] and assigns it to [_sharedPreferences]
  /// and assigns the [homeAssistantUrl] to [_homeAssistantUrlSubject].
  Future<void> init() async {
    // when testing shared preferences can be replaced by a mock
    _sharedPreferences ??= await SharedPreferences.getInstance();
    _homeAssistantUrlSubject.value = homeAssistantUrl;
  }

  static const _homeAssistantUrlKey = 'home_assistant_url';
  static const _firstRunKey = 'first_run';
  static const _themeModeKey = 'theme_mode';

  final BehaviorSubject<String> _homeAssistantUrlSubject =
      BehaviorSubject<String>();
  Stream<String> get homeAssistantUrlStream => _homeAssistantUrlSubject.stream;

  /// Close streams and listeners
  Future<void> dispose() async => _homeAssistantUrlSubject.close();

  /// Returns the home assistant url.
  ///
  /// Returns an empty [String] if none is set.
  String get homeAssistantUrl =>
      _sharedPreferences!.getString(_homeAssistantUrlKey) ?? '';

  /// Sets the home assistant url.
  set homeAssistantUrl(String value) {
    _sharedPreferences!.setString(_homeAssistantUrlKey, value);
    _homeAssistantUrlSubject.value = value;
  }

  /// Returns a bool depending on if the app is running for the first time.
  ///
  /// Returns true if non is set.
  bool get firstRun => _sharedPreferences!.getBool(_firstRunKey) ?? true;

  /// Sets a bool if the app is running for the first time.
  set firstRun(bool value) => _sharedPreferences!.setBool(_firstRunKey, value);

  /// Returns the [ThemeMode].
  ///
  /// Returns [ThemeMode.system] if none is set.
  ThemeMode get themeMode {
    final _themeMode =
        _sharedPreferences!.getString(_themeModeKey) ?? ThemeMode.system.name;

    return ThemeMode.values.firstWhere(
      (themeMode) => themeMode.name == _themeMode,
    );
  }

  /// Sets the [ThemeMode].
  set themeMode(ThemeMode themeMode) => _sharedPreferences!.setString(
        _themeModeKey,
        themeMode.name,
      );

  @visibleForTesting
  String get homeAssistantUrlKey => _homeAssistantUrlKey;

  @visibleForTesting
  String get firstRunKey => _firstRunKey;

  @visibleForTesting
  String get themeModeKey => _themeModeKey;
}
