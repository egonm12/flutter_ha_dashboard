import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_ha_dashboard/src/core/services/api_service.dart';
import 'package:flutter_ha_dashboard/src/core/services/secure_storage_service.dart';
import 'package:flutter_ha_dashboard/src/core/services/shared_preferences_service.dart';
import 'package:flutter_ha_dashboard/src/core/utils/app_config.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';

final GetIt serviceLocator = GetIt.instance;

void setUp() {
  serviceLocator.registerLazySingleton<AppConfig>(
    () => AppConfig(
      oauthClientId:
          'http://ha-flutter-bucket.s3-website.eu-central-1.amazonaws.com',
      oauthRedirectUri: 'com.aegon.dashboard:/',
    ),
  );
  serviceLocator.registerSingletonAsync<SharedPreferencesService>(
    () async => SharedPreferencesService()..init(),
  );
  serviceLocator.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepository(),
  );
  serviceLocator.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(),
    )..interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) async {
            final accessToken = await serviceLocator<AuthenticationRepository>()
                .validAccessToken;

            if (accessToken != null) {
              options.headers[HttpHeaders.authorizationHeader] =
                  'Bearer $accessToken';
            }

            options.baseUrl =
                serviceLocator<SharedPreferencesService>().homeAssistantUrl;

            return handler.next(options);
          },
        ),
      ),
  );
  serviceLocator.registerSingletonAsync<ApiService>(
    () async {
      return ApiService(serviceLocator<Dio>());
    },
    dependsOn: [SharedPreferencesService],
  );
  serviceLocator.registerLazySingleton<SecureStorageService>(
    () => SecureStorageService(),
  );
}
