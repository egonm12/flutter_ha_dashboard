import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:flutter_ha_dashboard/src/core/widgets/async_value/async_value_widget.dart';
import '../../mocks/mocks.dart';
import '../../widget_tester_extension.dart';

void main() {
  group('AsyncValueWidget', () {
    group("when AsyncValue.loading", () {
      const asyncValue = AsyncValue<void>.loading();

      testWidgets('shows a circular progress indicator', (tester) async {
        await tester.pumpRouterApp(
          AsyncValueWidget(
            value: asyncValue,
            data: (_) => const SizedBox.shrink(),
          ),
        );

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      });
    });

    group("when AsyncValue.data", () {
      const asyncValue = AsyncValue<void>.data(null);

      testWidgets('shows the widget returned by data',
          (WidgetTester tester) async {
        await tester.pumpRouterApp(
          AsyncValueWidget(
            value: asyncValue,
            data: (_) => const Text('Data'),
          ),
        );

        expect(find.text('Data'), findsOneWidget);
      });
    });

    group("when AsyncValue.error", () {
      final PlatformException error = PlatformException(
        code: 'Error',
        message: 'Something went wrong!',
      );
      final asyncValue = AsyncValue<void>.error(error);

      testWidgets('shows the error', (WidgetTester tester) async {
        await tester.pumpRouterApp(
          AsyncValueWidget(
            value: asyncValue,
            data: (_) => const SizedBox.shrink(),
          ),
        );

        expect(find.text(error.toString()), findsOneWidget);
      });

      testWidgets('shows the "Retry" button when onRetry is defined',
          (WidgetTester tester) async {
        await tester.pumpRouterApp(
          AsyncValueWidget(
            value: asyncValue,
            data: (_) => const SizedBox.shrink(),
            onRetry: () {},
          ),
        );

        expect(find.widgetWithText(ElevatedButton, 'Retry'), findsOneWidget);
      });

      testWidgets('calls the onRetry callback when tapping the "Retry" button',
          (WidgetTester tester) async {
        final mock = MockFunction();

        when(mock).thenAnswer((_) => Future.value());

        await tester.pumpRouterApp(
          AsyncValueWidget(
            value: asyncValue,
            data: (_) => const SizedBox.shrink(),
            onRetry: mock,
          ),
        );

        await tester.tap(find.widgetWithText(ElevatedButton, 'Retry'));

        verify(mock).called(1);
      });

      testWidgets('does not show the "Retry" button when onRetry is null',
          (WidgetTester tester) async {
        await tester.pumpRouterApp(
          AsyncValueWidget(
            value: asyncValue,
            data: (_) => const SizedBox.shrink(),
            onRetry: null,
          ),
        );

        expect(find.widgetWithText(ElevatedButton, 'Retry'), findsNothing);
      });
    });
  });
}
