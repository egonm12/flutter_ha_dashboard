import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  factory SecureStorageService({FlutterSecureStorage? flutterSecureStorage}) {
    _instance = SecureStorageService._internal(
      flutterSecureStorage ?? const FlutterSecureStorage(),
    );

    return _instance;
  }

  SecureStorageService._internal(this._flutterSecureStorage);

  static SecureStorageService get instance => _instance;

  static late SecureStorageService _instance;
  late final FlutterSecureStorage _flutterSecureStorage;

  static const accessTokenKey = 'access_token';

  Future<String?> readAccessToken() async =>
      await _flutterSecureStorage.read(key: accessTokenKey);

  Future<void> writeAccessToken(String accessToken) async {
    await _flutterSecureStorage.write(key: accessTokenKey, value: accessToken);
  }
}
