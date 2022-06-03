import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_button.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_cubit.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_form.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/url_text_field.dart';
import '../../../../mocks/mocks.dart';
import '../../../../widget_tester_extension.dart';

void main() {
  group(ConnectForm, () {
    late final MockConnectCubit connectCubit;
    late final List<BlocProvider> blocProviders;

    setUpAll(() {
      connectCubit = MockConnectCubit();
      blocProviders = [
        BlocProvider<ConnectCubit>(create: (_) => connectCubit),
      ];
    });

    Future<void> _renderConnectForm(WidgetTester tester) async =>
        await tester.pumpRouterApp(
          const Scaffold(
            body: ConnectForm(),
          ),
          blocProviders: blocProviders,
        );

    testWidgets(
        'Given ConnectState.data'
        'Then a UrlTextField is shown'
        'And a ConnectButton is shown', (tester) async {
      when(() => connectCubit.state).thenReturn(const ConnectState.data(null));

      await _renderConnectForm(tester);

      expect(find.byType(UrlTextField), findsOneWidget);
      expect(find.byType(ConnectButton), findsOneWidget);
    });

    testWidgets(
        'Given ConnectState.data'
        'When the text field is empty'
        'And the connect button is pressed'
        'Then an error is shown', (tester) async {
      when(() => connectCubit.state).thenReturn(const ConnectState.data(null));

      await _renderConnectForm(tester);

      await tester.tap(find.byType(ConnectButton));
      await tester.pumpAndSettle();

      expect(find.text('This field cannot be empty.'), findsOneWidget);
    });

    testWidgets(
        'Given ConnectState.data'
        'When the text field value is not an url'
        'And the connect button is pressed'
        'Then an error is shown', (tester) async {
      when(() => connectCubit.state).thenReturn(const ConnectState.data(null));

      await _renderConnectForm(tester);

      final urlTextField = find.byType(FormBuilderTextField);

      await tester.enterText(urlTextField, 'hello world!');

      await tester.tap(find.byType(ConnectButton));
      await tester.pumpAndSettle();

      expect(
        find.text('This field requires a valid URL address.'),
        findsOneWidget,
      );
    });
  });
}
