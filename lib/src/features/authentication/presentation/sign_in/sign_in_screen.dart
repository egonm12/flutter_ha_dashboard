import 'dart:async';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter_ha_dashboard/src/core/utils/async_value.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/sign_in/sign_in_screen_controller.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final StreamSubscription<AsyncValue<String>> _signInControllerListener;

  @override
  void initState() {
    super.initState();
    _signInControllerListener =
        context.read<SignInScreenController>().stream.listen(
              (event) => event.whenOrNull(
                data: (_) => Navigator.of(context).pushNamed('/account'),
              ),
            );
    context
        .read<SignInScreenController>()
        .authenticationRepository
        .validAccessToken
        .then<void>((value) {
      if (value != null && value.isNotEmpty) {
        Navigator.of(context).pushNamed('/account');
      }
    });
  }

  @override
  void dispose() {
    _signInControllerListener.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: context.watch<AsyncValue<String>>().maybeWhen(
            initial: () => Center(
              child: ElevatedButton(
                onPressed: context.read<SignInScreenController>().signIn,
                child: const Text('Sign in'),
              ),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            orElse: () => const SizedBox.shrink(),
          ),
    );
  }
}
