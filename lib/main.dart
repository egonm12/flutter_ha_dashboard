import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/app.dart';
import 'package:flutter_ha_dashboard/src/core/services/shared_preferences_service.dart';
import 'package:flutter_ha_dashboard/src/core/state/app_bloc.dart';
import 'package:flutter_ha_dashboard/src/features/areas/data/areas_repository.dart';
import 'package:flutter_ha_dashboard/src/features/areas/presentation/area_list/area_list_cubit.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_cubit.dart';
import 'package:flutter_ha_dashboard/src/features/devices/data/devices_repository.dart';
import 'package:flutter_ha_dashboard/src/features/devices/presentation/device_list/device_list_cubit.dart';
import 'package:flutter_ha_dashboard/src/features/entities/data/entities_repository.dart';
import 'package:flutter_ha_dashboard/src/features/entities/presentation/entity_list/entity_list_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUp();

  await serviceLocator.allReady();
  await serviceLocator<SharedPreferencesService>().init();
  await serviceLocator<AuthenticationRepository>().init();

  final deviceListCubit = DeviceListCubit(
    devicesRepository: serviceLocator<DevicesRepository>(),
  );
  final entityListCubit = EntityListCubit(
    entitiesRepository: serviceLocator<EntitiesRepository>(),
  );

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (_) => AppBloc()..add(const AppEvent.initializeApp()),
        ),
        // required to be global since the authentication is done outside the connect screen
        BlocProvider<ConnectCubit>(
          create: (_) => ConnectCubit(
            authenticationRepository:
                serviceLocator<AuthenticationRepository>(),
          ),
        ),
        BlocProvider<DeviceListCubit>(
          lazy: false,
          create: (_) => deviceListCubit..deviceRegistries(),
        ),
        BlocProvider<EntityListCubit>(
          lazy: false,
          create: (_) => entityListCubit..entityRegistries(),
        ),
        BlocProvider<AreaListCubit>(
          lazy: false,
          create: (_) => AreaListCubit(
            areasRepository: serviceLocator<AreasRepository>(),
            deviceListCubit: deviceListCubit,
            entityListCubit: entityListCubit,
          )..areaRegistries(),
        ),
      ],
      child: const App(),
    ),
  );
}
