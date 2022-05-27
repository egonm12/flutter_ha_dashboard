import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'mocks/mocks.dart';

extension WidgetTesterExtension on WidgetTester {
  /// Wraps the [widget] in [MaterialApp] with an [InheritedGoRouter].
  /// Then calls [pumpWidget].
  Future<void> pumpRouterApp(
    Widget widget, {
    MockGoRouter? router,
    List<BlocProvider> blocProviders = const [],
    List<RepositoryProvider<dynamic>> repositoryProviders = const [],
  }) async {
    Widget app = MaterialApp(
      home: InheritedGoRouter(
        child: widget,
        goRouter: router ?? MockGoRouter(),
      ),
    );

    if (blocProviders.isNotEmpty) {
      app = MultiBlocProvider(
        providers: blocProviders,
        child: app,
      );
    }
    if (repositoryProviders.isNotEmpty) {
      app = MultiRepositoryProvider(
        providers: repositoryProviders,
        child: app,
      );
    }

    return pumpWidget(app);
  }
}
