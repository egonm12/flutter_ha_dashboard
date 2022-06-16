import 'package:flutter/foundation.dart';

import 'package:go_router/go_router.dart';

import 'package:flutter_ha_dashboard/src/core/state/app_bloc.dart';
import 'package:flutter_ha_dashboard/src/features/areas/presentation/area_list/area_list_screen.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/account/account_screen.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/connect/connect_screen.dart';
import 'package:flutter_ha_dashboard/src/features/home/presentation/home_screen.dart';
import 'route_name.dart';

class AppRouter {
  AppRouter._();

  static GoRouter router({
    required AuthenticationRepository authenticationRepository,
    required AppBloc appBloc,
  }) {
    return GoRouter(
      initialLocation: RouteName.connect.path,
      routes: _routes,
      redirect: (state) => _redirect(
        state,
        authenticationRepository: authenticationRepository,
        appBloc: appBloc,
      ),
      refreshListenable: Listenable.merge([
        GoRouterRefreshStream(authenticationRepository.authStateStream),
        GoRouterRefreshStream(appBloc.stream),
      ]),
    );
  }

  static final List<GoRoute> _routes = [
    GoRoute(
      path: RouteName.account.path,
      name: RouteName.account.name,
      builder: (_, __) => const AccountScreen(),
    ),
    GoRoute(
      path: RouteName.connect.path,
      name: RouteName.connect.name,
      builder: (_, __) => const ConnectScreen(),
    ),
    GoRoute(
      path: RouteName.areas.path,
      name: RouteName.areas.name,
      builder: (_, __) => const AreaListScreen(),
    ),
    GoRoute(
      path: RouteName.home.path,
      name: RouteName.home.name,
      builder: (_, __) => const HomeScreen(),
    ),
  ];

  /// Returns the redirect path based on state from [authenticationRepository]
  /// and [appBloc]
  static String? _redirect(
    GoRouterState state, {
    required AuthenticationRepository authenticationRepository,
    required AppBloc appBloc,
  }) {
    final isAuthenticated = authenticationRepository.isAuthenticated;

    if (appBloc.state.appSettings.homeAssistantUrl.isEmpty) {
      return maybeRedirect(state, RouteName.connect.path);
    }

    if (isAuthenticated) {
      return maybeRedirect(state, RouteName.home.path);
    }
    return maybeRedirect(state, RouteName.connect.path);
  }

  /// Returns [redirectPath] when [GoRouterState.location] is different, otherwise
  /// returns null
  static String? maybeRedirect(GoRouterState state, String redirectPath) =>
      state.location == redirectPath ? null : redirectPath;
}
