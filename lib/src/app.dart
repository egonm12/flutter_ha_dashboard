import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/utils/async_value.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/account/account_screen.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/account/account_screen_controller.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/sign_in/sign_in_screen.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/sign_in/sign_in_screen_controller.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/sign-in',
      routes: {
        '/sign-in': (_) =>
            StateNotifierProvider<SignInScreenController, AsyncValue<String>>(
              create: (_) => SignInScreenController(
                authenticationRepository:
                    serviceLocator<AuthenticationRepository>(),
              ),
              child: const SignInScreen(),
            ),
        '/account': (_) =>
            StateNotifierProvider<AccountScreenController, AsyncValue<void>>(
              create: (_) => AccountScreenController(
                authenticationRepository:
                    serviceLocator<AuthenticationRepository>(),
              ),
              child: const AccountScreen(),
            ),
      },
    );
  }
}
