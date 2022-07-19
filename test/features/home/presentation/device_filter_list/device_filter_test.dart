import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_ha_dashboard/src/features/home/presentation/device_filter_list/device_filter.dart';
import '../../../../widget_tester_extension.dart';

void main() {
  group(DeviceFilter, () {
    testWidgets(
        'Given the device filter'
        'Then it shows the avatar, title and subtitle', (tester) async {
      await tester.pumpRouterApp(
        const Scaffold(
          body: DeviceFilter(
            avatar: Icon(Icons.lightbulb),
            title: 'The title',
            subtitle: 'The subtitle',
          ),
        ),
      );

      expect(find.byIcon(Icons.lightbulb), findsOneWidget);
      expect(find.text('The title'), findsOneWidget);
      expect(find.text('The subtitle'), findsOneWidget);
    });
  });
}
