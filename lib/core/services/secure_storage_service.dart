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

  static SecureStorageService get instance => _instance;

  /// {@macro SecureStorageService}
  static late SecureStorageService _instance;
  late final FlutterSecureStorage _flutterSecureStorage;

  /// Identifier to write and read the access token value
  static const accessTokenKey = 'access_token';

  /// Retrieves the value of [accessTokenKey] stored in [FlutterSecureStorage]
  Future<String?> readAccessToken() async =>
      await _flutterSecureStorage.read(key: accessTokenKey);

  /// Saves the [accessToken] to [FlutterSecureStorage] using [accessTokenKey]
  Future<void> writeAccessToken(String accessToken) async {
    await _flutterSecureStorage.write(key: accessTokenKey, value: accessToken);
  }
}
