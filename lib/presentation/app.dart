import 'package:flutter/material.dart';

import 'package:flutter_ha_dashboard/core/services/authentication_service.dart';
import 'package:flutter_ha_dashboard/service_locator.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ElevatedButton(
            child: const Text('Login'),
            onPressed: getIt<AuthenticationService>().authenticate,
          ),
        ),
      ),
    );
  }
}
