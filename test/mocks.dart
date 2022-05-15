import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_ha_dashboard/src/core/services/secure_storage_service.dart';
import 'package:flutter_ha_dashboard/src/core/utils/app_config.dart';

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

class MockSecureStorageService extends Mock implements SecureStorageService {}

class MockFlutterAppAuth extends Mock implements FlutterAppAuth {}

class MockAppConfig extends Mock implements AppConfig {}
