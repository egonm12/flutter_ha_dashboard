import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/utils/async_value.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/sign_in/sign_in_screen_controller.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<SignInScreenController, AsyncValue<String>>(
      create: (_) => SignInScreenController(
        authenticationRepository: getIt<AuthenticationRepository>(),
      ),
      builder: (context, widget) {
        final state = context.watch<AsyncValue<String>>();

        return state.maybeWhen(
          initial: () => Center(
            child: ElevatedButton(
              onPressed: context.read<SignInScreenController>().signIn,
              child: const Text('Sign in'),
            ),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          data: (_) => Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Sign out'),
            ),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
