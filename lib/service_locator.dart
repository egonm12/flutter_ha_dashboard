import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_ha_dashboard/src/core/services/api_service.dart';
import 'package:flutter_ha_dashboard/src/core/services/secure_storage_service.dart';
import 'package:flutter_ha_dashboard/src/core/services/shared_preferences_service.dart';
import 'package:flutter_ha_dashboard/src/core/services/web_socket_service.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/utils/app_config.dart';

final GetIt serviceLocator = GetIt.instance;

// ignore: long-method
void setUp() {
  serviceLocator.registerLazySingleton<AppConfig>(
    () => AppConfig(
      oauthClientId:
          'http://ha-flutter-bucket.s3-website.eu-central-1.amazonaws.com',
      oauthRedirectUri: 'com.aegon.dashboard:/',
    ),
  );
  serviceLocator.registerSingletonAsync<SharedPreferencesService>(
    () async => await SharedPreferencesService.create(),
    dispose: (sharedPreferencesService) async =>
        await sharedPreferencesService.dispose(),
  );
  serviceLocator.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepository(),
    dispose: (authenticationRepository) async =>
        await authenticationRepository.dispose(),
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
  serviceLocator.registerSingleton<ApiService>(
    ApiService(serviceLocator<Dio>()),
  );
  serviceLocator.registerLazySingleton<SecureStorageService>(
    () => SecureStorageService(),
    dispose: (secureStorageService) async =>
        await secureStorageService.dispose(),
  );
  serviceLocator.registerSingletonAsync<WebSocketService>(
    () async => await WebSocketService.create()
      ..areaRegistries(),
    dependsOn: [SharedPreferencesService],
    dispose: (webSocketService) async => webSocketService.dispose(),
  );
}
