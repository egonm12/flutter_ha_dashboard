import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/app.dart';
import 'package:flutter_ha_dashboard/src/core/services/shared_preferences_service.dart';
import 'package:flutter_ha_dashboard/src/core/state/app_bloc.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUp();

  await serviceLocator<SharedPreferencesService>().init();

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
      ],
      child: const App(),
    ),
  );
}
