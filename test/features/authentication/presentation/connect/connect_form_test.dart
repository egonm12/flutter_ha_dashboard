import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_ha_dashboard/src/core/state/app_bloc.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_button.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_cubit.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_form.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/url_text_field.dart';
import '../../../../mocks/mocks.dart';
import '../../../../widget_tester_extension.dart';

void main() {
  group(ConnectForm, () {
    late final MockConnectCubit connectCubit;
    late final MockAppBloc appBloc;
    late final List<BlocProvider> blocProviders;
    late final String homeAssistantUrl;
    late final AppState defaultAppState;

    setUpAll(() {
      connectCubit = MockConnectCubit();
      appBloc = MockAppBloc();
      blocProviders = [
        BlocProvider<ConnectCubit>(create: (_) => connectCubit),
        BlocProvider<AppBloc>(create: (_) => appBloc),
      ];
      homeAssistantUrl = 'http://localhost:3000';
      defaultAppState = AppState(
        appStatus: const AppStatus.initialized(),
        appSettings: AppSettings(
          homeAssistantUrl: homeAssistantUrl,
          themeMode: ThemeMode.light,
        ),
      );
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
        'Then the text field initial value is the home assistant url'
        'And a ConnectButton is shown', (tester) async {
      when(() => appBloc.state).thenReturn(defaultAppState);
      when(() => connectCubit.state).thenReturn(const ConnectState.data(null));

      await _renderConnectForm(tester);

      expect(
        find.descendant(
          of: find.byType(UrlTextField),
          matching: find.widgetWithText(FormBuilderTextField, homeAssistantUrl),
        ),
        findsOneWidget,
      );
      expect(find.byType(ConnectButton), findsOneWidget);
    });

    testWidgets(
        'Given ConnectState.data'
        'When the text field is empty'
        'And the connect button is pressed'
        'Then an error is shown', (tester) async {
      when(() => connectCubit.state).thenReturn(const ConnectState.data(null));
      when(() => appBloc.state).thenReturn(
        defaultAppState.copyWith(
          appSettings: defaultAppState.appSettings.copyWith(
            homeAssistantUrl: '',
          ),
        ),
      );

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
      when(() => appBloc.state).thenReturn(
        defaultAppState.copyWith(
          appSettings: defaultAppState.appSettings.copyWith(
            homeAssistantUrl: '',
          ),
        ),
      );

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
