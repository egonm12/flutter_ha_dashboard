import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// {@template SecureStorageService}
/// Service class used as a bridge to communicate with [FlutterSecureStorage].
/// {@endtemplate}
class SecureStorageService {
  /// {@macro SecureStorageService}
  factory SecureStorageService({FlutterSecureStorage? flutterSecureStorage}) {
    _instance = SecureStorageService._internal(
      flutterSecureStorage ?? const FlutterSecureStorage(),
    );

    return _instance;
  }

  /// {@macro SecureStorageService}
  SecureStorageService._internal(this._flutterSecureStorage);

  /// Public instance of [SecureStorageService]
  static SecureStorageService get instance => _instance;

  /// Identifier to write and read the access token value
  static const accessTokenKey = 'access_token';
  static const accessTokenExpirationDateKey = 'access_token_expiration_date';
  static const refreshTokenKey = 'refresh_token';

  /// Private instance of [SecureStorageService]
  static late SecureStorageService _instance;

  late final FlutterSecureStorage _flutterSecureStorage;

  /// Retrieves the value of [accessTokenKey] stored in [FlutterSecureStorage]
  Future<String?> readAccessToken() async =>
      await _flutterSecureStorage.read(key: accessTokenKey);

  /// Saves the [accessToken] to [FlutterSecureStorage] using [accessTokenKey]
  Future<void> writeAccessToken(String accessToken) async =>
      await _flutterSecureStorage.write(
        key: accessTokenKey,
        value: accessToken,
      );

  /// Retrieves the value of [refreshTokenKey] stored in [FlutterSecureStorage]
  Future<String?> readRefreshToken() async =>
      await _flutterSecureStorage.read(key: refreshTokenKey);

  /// Saves the [refreshToken] to [FlutterSecureStorage] using [refreshTokenKey]
  Future<void> writeRefreshToken(String refreshToken) async =>
      await _flutterSecureStorage.write(
        key: refreshTokenKey,
        value: refreshToken,
      );

  /// Retrieves the value of [accessTokenExpirationDateKey] stored in [FlutterSecureStorage]
  Future<DateTime?> readAccessTokenExpirationDate() async {
    final String? iso8601ExpirationDate = await _flutterSecureStorage.read(
      key: accessTokenExpirationDateKey,
    );

    if (iso8601ExpirationDate == null) {
      return null;
    }

    return DateTime.parse(iso8601ExpirationDate);
  }

  /// Deletes all keys with associated values from [FlutterSecureStorage]
  Future<void> deleteAll() async => await _flutterSecureStorage.deleteAll();

  /// Saves the [expirationDate] to [FlutterSecureStorage] using [accessTokenExpirationDateKey]
  Future<void> writeAccessTokenExpirationDate(DateTime expirationDate) async {
    await _flutterSecureStorage.write(
      key: accessTokenExpirationDateKey,
      value: expirationDate.toIso8601String(),
    );
  }
}
