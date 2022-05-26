import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show AsyncValue;

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/widgets/async_value/async_value_widget.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/sign_in/sign_in_cubit.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInCubit>(
        create: (context) => SignInCubit(
              authenticationRepository:
                  serviceLocator<AuthenticationRepository>(),
            ),
        child: BlocBuilder<SignInCubit, AsyncValue<void>>(
          builder: (context, state) => Scaffold(
            body: AsyncValueWidget(
              value: state,
              data: (_) => Center(
                child: ElevatedButton(
                  onPressed: context.read<SignInCubit>().signIn,
                  child: const Text('Sign in'),
                ),
              ),
              onRetry: context.read<SignInCubit>().resetState,
            ),
          ),
        ));
  }
}
