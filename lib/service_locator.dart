import 'package:get_it/get_it.dart';

import 'package:flutter_ha_dashboard/src/core/services/secure_storage_service.dart';
import 'package:flutter_ha_dashboard/src/core/utils/app_config.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';

final GetIt getIt = GetIt.instance;

void setUp() {
  getIt.registerLazySingleton<AppConfig>(
    () => AppConfig(
      oauthClientId:
          'http://ha-flutter-bucket.s3-website.eu-central-1.amazonaws.com',
      oauthRedirectUri: 'com.aegon.dashboard:/',
    ),
  );
  getIt.registerLazySingleton<SecureStorageService>(
    () => SecureStorageService(),
  );
  getIt.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepository(),
  );
}
