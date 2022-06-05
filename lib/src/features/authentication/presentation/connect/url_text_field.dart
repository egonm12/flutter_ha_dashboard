import 'package:flutter/material.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:flutter_ha_dashboard/src/utils/build_context_extensions.dart';

/// [FormBuilderTextField] to input the home assistant url
class UrlTextField extends HookWidget {
  const UrlTextField({
    required this.controller,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final _urlTextFieldKey = useMemoized(
      GlobalKey<FormBuilderFieldState<FormBuilderTextField, String>>.new,
      const [],
    );

    return FormBuilderTextField(
      key: _urlTextFieldKey,
      name: 'home_assistant_url',
      controller: controller,
      decoration: InputDecoration(
        labelText: context.translations.urlTextFieldPlaceholder,
      ),
      validator: FormBuilderValidators.compose(
        [
          FormBuilderValidators.required(),
          FormBuilderValidators.url(),
        ],
      ),
    );
  }
}
