import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/app.dart';
import 'package:flutter_ha_dashboard/src/core/services/shared_preferences_service.dart';
import 'package:flutter_ha_dashboard/src/core/state/app_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUp();

  await serviceLocator<SharedPreferencesService>().init();

  runApp(
    BlocProvider(
      create: (_) => AppBloc()..add(const AppEvent.initializeApp()),
      child: const App(),
    ),
  );
}
