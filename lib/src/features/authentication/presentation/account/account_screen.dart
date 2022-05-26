import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show AsyncValue;

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/account/account_cubit.dart';
import 'package:flutter_ha_dashboard/src/widgets/async_value/async_value_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AccountCubit>(
      create: (_) => AccountCubit(
        authenticationRepository: serviceLocator<AuthenticationRepository>(),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<AccountCubit, AsyncValue<void>>(
          builder: (context, state) => AsyncValueWidget(
            value: state,
            data: (_) => Center(
              child: ElevatedButton(
                onPressed: context.read<AccountCubit>().signOut,
                child: const Text('Sign out'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
