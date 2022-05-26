import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'mocks/mocks.dart';

extension WidgetTesterExtension on WidgetTester {
  /// Wraps the [widget] in [MaterialApp] with an [InheritedGoRouter].
  /// Then calls [pumpWidget].
  Future<void> pumpRouterApp(
    Widget widget, {
    MockGoRouter? router,
  }) async {
    final Widget app = MaterialApp(
      home: InheritedGoRouter(
        child: widget,
        goRouter: router ?? MockGoRouter(),
      ),
    );

    return pumpWidget(app);
  }
}
