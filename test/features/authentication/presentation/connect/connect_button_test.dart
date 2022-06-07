import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_ha_dashboard/src/core/state/app_bloc.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_button.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_cubit.dart';
import '../../../../mocks/mocks.dart';
import '../../../../widget_tester_extension.dart';

void main() {
  group(ConnectButton, () {
    late final MockFormBuilderState formBuilderState;

    late final MockFormBuilderKey formKey;
    late final String homeAssistantUrl;
    late final TextEditingController controller;

    late final MockAppBloc appBloc;
    late final MockConnectCubit connectCubit;
    late final List<BlocProvider> blocProviders;

    setUpAll(() {
      registerFallbackValue(const AppEvent.initializeApp());

      formBuilderState = MockFormBuilderState();
      formKey = MockFormBuilderKey(formBuilderState);
      homeAssistantUrl = 'http://localhost:3000';

      controller = TextEditingController(
        text: homeAssistantUrl,
      );

      appBloc = MockAppBloc();
      connectCubit = MockConnectCubit();
      blocProviders = [
        BlocProvider<AppBloc>(
          create: (_) => appBloc,
        ),
        BlocProvider<ConnectCubit>(
          create: (_) => connectCubit,
        ),
      ];

      when(() => appBloc.add(any())).thenReturn(null);
      when(() => connectCubit.signIn(any())).thenAnswer((_) => Future.value());
    });

    Future<void> _renderConnectButton(WidgetTester tester) async =>
        await tester.pumpRouterApp(
          ConnectButton(
            formKey: formKey,
            controller: controller,
          ),
          blocProviders: blocProviders,
        );

    testWidgets(
        'Given the form state is valid'
        'When the "Connect" button is tapped'
        'Then the home assistant url is updated'
        'And the sign in is triggered', (tester) async {
      when(() => formBuilderState.isValid).thenReturn(true);

      await _renderConnectButton(tester);

      await tester.tap(
        find.widgetWithText(
          ElevatedButton,
          'connectCTA',
        ),
      );

      verify(
        () => appBloc.add(
          AppEvent.updateHomeAssistantUrl(homeAssistantUrl),
        ),
      ).called(1);
      verify(() => connectCubit.signIn(homeAssistantUrl)).called(1);
      verifyNever(() => formBuilderState.validate());
    });

    testWidgets(
        'Given the form state is invalid'
        'When the "Connect" button is tapped'
        'Then the form is validated', (tester) async {
      when(() => formBuilderState.isValid).thenReturn(false);
      when(() => formBuilderState.validate()).thenReturn(false);

      await _renderConnectButton(tester);

      await tester.tap(
        find.widgetWithText(
          ElevatedButton,
          'connectCTA',
        ),
      );

      verify(() => formBuilderState.validate()).called(1);
      verifyNever(() => appBloc.add(any()));
      verifyNever(() => connectCubit.signIn(any()));
    });
  });
}
