import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/core/utils/async_value.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/account/account_screen_controller.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<AccountScreenController, AsyncValue<void>>(
      create: (_) => AccountScreenController(
        authenticationRepository: getIt<AuthenticationRepository>(),
      ),
      builder: (context, widget) => Center(
        child: ElevatedButton(
          onPressed: context.read<AccountScreenController>().signOut,
          child: const Text('Sign out'),
        ),
      ),
    );
  }
}
