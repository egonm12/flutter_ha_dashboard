import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_ha_dashboard/service_locator.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_cubit.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_form.dart';
import 'package:flutter_ha_dashboard/src/theme/theme_extensions/app_sizes.dart';
import 'package:flutter_ha_dashboard/src/widgets/app_bar/custom_app_bar.dart';

/// Screen to enter url and connect to Home Assistant.
class ConnectScreen extends StatelessWidget {
  const ConnectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appSizes = Theme.of(context).extension<AppSizes>()!;

    return BlocProvider(
      create: (_) => ConnectCubit(
        authenticationRepository: serviceLocator<AuthenticationRepository>(),
      ),
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: Padding(
          padding: EdgeInsets.all(appSizes.p16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ConnectForm(),
            ],
          ),
        ),
      ),
    );
  }
}
