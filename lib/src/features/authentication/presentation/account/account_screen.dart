import 'dart:async';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter_ha_dashboard/src/core/utils/async_value.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/account/account_screen_controller.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  late final StreamSubscription<AsyncValue<void>> _accountControllerListener;

  @override
  void initState() {
    super.initState();
    _accountControllerListener =
        context.read<AccountScreenController>().stream.listen(
              (event) => event.whenOrNull(
                data: (_) => Navigator.of(context).pushNamed('/sign-in'),
              ),
            );
  }

  @override
  void dispose() {
    _accountControllerListener.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          onPressed: context.read<AccountScreenController>().signOut,
          child: const Text('Sign out'),
        ),
      ),
    );
  }
}
