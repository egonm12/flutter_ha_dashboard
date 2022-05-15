import 'package:flutter/material.dart';

import 'package:flutter_ha_dashboard/src/features/authentication/presentation/account/account_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: AccountScreen(),
      ),
    );
  }
}
