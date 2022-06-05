import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/state/app_bloc.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/routing/router.dart';
import 'package:flutter_ha_dashboard/src/theme/dark_theme.dart';
import 'package:flutter_ha_dashboard/src/theme/light_theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSettings = context.watch<AppBloc>().state.appSettings;

    final GoRouter router = AppRouter.router(
      authenticationRepository: serviceLocator<AuthenticationRepository>(),
      appBloc: context.watch<AppBloc>(),
    );

    return MaterialApp.router(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: appSettings.themeMode,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        ...AppLocalizations.localizationsDelegates,
        FormBuilderLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en'),
    );
  }
}
