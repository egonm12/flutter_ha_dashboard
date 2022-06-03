import 'package:flutter/material.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/url_text_field.dart';
import '../../../../widget_tester_extension.dart';

void main() {
  group(UrlTextField, () {
    late final TextEditingController textEditingController;

    setUpAll(() {
      textEditingController = TextEditingController();
    });

    Future<void> _renderUrlTextField(WidgetTester tester) async =>
        await tester.pumpRouterApp(
          /// Material widget is required
          Scaffold(
            body: UrlTextField(
              controller: textEditingController,
            ),
          ),
        );

    testWidgets(
        'Given the url text field'
        'When text is entered'
        'Then the text is shown in the text field', (tester) async {
      const url = 'http://localhost:3000';
      await _renderUrlTextField(tester);

      final urlTextField = find.byType(FormBuilderTextField);

      await tester.enterText(urlTextField, url);

      expect(find.widgetWithText(FormBuilderTextField, url), findsOneWidget);
      expect(textEditingController.text, url);
    });
  });
}
