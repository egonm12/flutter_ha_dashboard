import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_button.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_cubit.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/url_text_field.dart';
import 'package:flutter_ha_dashboard/src/theme/theme_extensions/app_sizes.dart';
import 'package:flutter_ha_dashboard/src/widgets/async_value/async_value_widget.dart';

/// Form that renders [AsyncValueWidget] based on [ConnectionState].
///
/// Shows [UrlTextField] and [ConnectButton] on data.
class ConnectForm extends HookWidget {
  const ConnectForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appSizes = Theme.of(context).extension<AppSizes>()!;

    final _formKey = useMemoized(GlobalKey<FormBuilderState>.new, const []);
    final _controller = useTextEditingController();

    return AsyncValueWidget(
      value: context.watch<ConnectCubit>().state,
      data: (_) => FormBuilder(
        key: _formKey,
        child: Column(
          children: [
            UrlTextField(
              controller: _controller,
            ),
            SizedBox(
              height: _appSizes.p24,
            ),
            ConnectButton(
              formKey: _formKey,
              homeAssistantUrl: _controller.text,
            ),
          ],
        ),
      ),
    );
  }
}
