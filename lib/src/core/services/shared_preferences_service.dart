import 'package:flutter/foundation.dart';

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
  Future<void> init() async {
    // when testing shared preferences can be replaced by a mock
    _sharedPreferences ??= await SharedPreferences.getInstance();

    homeAssistantUrl = 'https://meijers-hassio.duckdns.org';
  }

  static const _homeAssistantUrlKey = 'home_assistant_url';
  static const _firstRunKey = 'first_run';

  String get homeAssistantUrl =>
      _sharedPreferences!.getString(_homeAssistantUrlKey) ?? '';

  set homeAssistantUrl(String value) =>
      _sharedPreferences!.setString(_homeAssistantUrlKey, value);

  bool get firstRun => _sharedPreferences!.getBool(_firstRunKey) ?? true;

  set firstRun(bool value) => _sharedPreferences!.setBool(_firstRunKey, value);

  @visibleForTesting
  String get homeAssistantUrlKey => _homeAssistantUrlKey;
  @visibleForTesting
  String get firstRunKey => _firstRunKey;
}
