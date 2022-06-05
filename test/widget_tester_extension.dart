import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_ha_dashboard/src/theme/dark_theme.dart';
import 'package:flutter_ha_dashboard/src/theme/light_theme.dart';
import 'mocks/app_localizations.dart';
import 'mocks/mocks.dart';

extension WidgetTesterExtension on WidgetTester {
  /// Wraps the [widget] in [MaterialApp] with an [InheritedGoRouter].
  /// Then calls [pumpWidget].
  Future<void> pumpRouterApp(
    Widget widget, {
    MockGoRouter? router,
    List<BlocProvider> blocProviders = const [],
    bool mockAppLocalizations = true,
    List<RepositoryProvider<dynamic>> repositoryProviders = const [],
  }) async {
    Widget app = MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      localizationsDelegates: [
        FormBuilderLocalizations.delegate,
        mockAppLocalizations
            ? MockAppLocalizations.delegate
            : AppLocalizations.delegate,
      ],
      locale: const Locale('en'),
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

    await pumpWidget(app);
    await pump();
  }
}
