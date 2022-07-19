import 'package:flutter/material.dart';

import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_ha_dashboard/src/core/services/api_service.dart';
import 'package:flutter_ha_dashboard/src/core/services/secure_storage_service.dart';
import 'package:flutter_ha_dashboard/src/core/services/shared_preferences_service.dart';
import 'package:flutter_ha_dashboard/src/core/services/web_socket_service.dart';
import 'package:flutter_ha_dashboard/src/core/state/app_bloc.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_cubit.dart';
import 'package:flutter_ha_dashboard/src/features/home/logic/device_filter_list_cubit/device_filter_list_cubit.dart';
import 'package:flutter_ha_dashboard/src/utils/app_config.dart';

/// Simple mock class that can be used to mock and verify if a callback is called
class MockFunction extends Mock {
  Future<void> call();
}

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

class MockSecureStorageService extends Mock implements SecureStorageService {}

class MockFlutterAppAuth extends Mock implements FlutterAppAuth {}

class MockAppConfig extends Mock implements AppConfig {}

class MockDio extends Mock implements Dio {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

class MockSharedPreferencesService extends Mock
    implements SharedPreferencesService {}

class MockApiService extends Mock implements ApiService {}

class MockGoRouter extends Mock implements GoRouter {}

class MockAppBloc extends MockBloc<AppEvent, AppState> implements AppBloc {}

class MockConnectCubit extends MockCubit<ConnectState> implements ConnectCubit {
}

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepository {}

class MockDeviceFilterListCubit extends MockCubit<DeviceFilterListState>
    implements DeviceFilterListCubit {}

class MockWebSocketService extends Mock implements WebSocketService {}

class MockFormBuilderState extends Mock implements FormBuilderState {
  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.debug}) =>
      super.toString();
}

class MockFormBuilderKey extends Mock
    implements GlobalKey<MockFormBuilderState> {
  MockFormBuilderKey(this.formBuilderState);

  final MockFormBuilderState formBuilderState;

  @override
  MockFormBuilderState get currentState => formBuilderState;
}
