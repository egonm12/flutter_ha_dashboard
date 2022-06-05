import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:flutter_ha_dashboard/src/core/state/app_bloc.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_cubit.dart';
import 'package:flutter_ha_dashboard/src/utils/build_context_extensions.dart';

/// Button to save the home assistant url to shared preferences and load the url
/// to authenticate
class ConnectButton extends StatelessWidget {
  const ConnectButton({
    required this.formKey,
    required this.homeAssistantUrl,
    super.key,
  });

  final GlobalKey<FormBuilderState> formKey;
  final String homeAssistantUrl;

  Future<void> _onSubmit(BuildContext context) async {
    if (formKey.currentState!.isValid) {
      context.read<AppBloc>().add(
            AppEvent.updateHomeAssistantUrl(
              homeAssistantUrl,
            ),
          );

      await context.read<ConnectCubit>().signIn();
    } else {
      formKey.currentState!.validate();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _onSubmit(context),
      child: Text(
        context.translations.connectCTA,
      ),
    );
  }
}
