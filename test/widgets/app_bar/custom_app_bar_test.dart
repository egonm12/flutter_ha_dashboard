import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_ha_dashboard/src/core/state/app_bloc.dart';
import 'package:flutter_ha_dashboard/src/widgets/app_bar/custom_app_bar.dart';
import '../../mocks/mocks.dart';
import '../../widget_tester_extension.dart';

void main() {
  group('CustomAppBar', () {
    late final MockAppBloc appBloc;

    setUpAll(() {
      appBloc = MockAppBloc();

      when(() => appBloc.state).thenReturn(
        const AppState(
          appStatus: AppStatus.uninitialized(),
          appSettings: AppSettings(
            themeMode: ThemeMode.light,
            homeAssistantUrl: '',
          ),
        ),
      );
      when(
        () => appBloc.add(
          const AppEvent.toggleThemeMode(),
        ),
      ).thenReturn(null);
    });

    Future<void> _renderCustomAppBar(WidgetTester tester) async =>
        await tester.pumpRouterApp(
          const CustomAppBar(),
          blocProviders: [
            BlocProvider<AppBloc>(
              create: (_) => appBloc,
            ),
          ],
        );

    testWidgets(
        'calls [AppBloc.toggleThemeMode] when tapping the action button',
        (tester) async {
      await _renderCustomAppBar(tester);

      await tester.tap(find.byIcon(Icons.brightness_4_sharp));

      verify(() => appBloc.add(const AppEvent.toggleThemeMode())).called(1);
    });
  });
}
