import 'package:go_router/go_router.dart';

import 'package:flutter_ha_dashboard/src/features/authentication/data/authentication_repository.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/account/account_screen.dart';
import 'package:flutter_ha_dashboard/src/features/authentication/presentation/sign_in/sign_in_screen.dart';
import 'route_name.dart';

class AppRouter {
  AppRouter._();

  static GoRouter router(AuthenticationRepository authenticationRepository) =>
      GoRouter(
        initialLocation: RouteName.signIn.path,
        routes: _routes,
        redirect: (state) => _redirect(
          state,
          authenticationRepository,
        ),
        refreshListenable:
            GoRouterRefreshStream(authenticationRepository.authStateChanges()),
      );

  static final List<GoRoute> _routes = [
    GoRoute(
      path: RouteName.signIn.path,
      name: RouteName.signIn.name,
      builder: (_, __) => const SignInScreen(),
    ),
    GoRoute(
      path: RouteName.account.path,
      name: RouteName.account.name,
      builder: (_, __) => const AccountScreen(),
    ),
  ];

  static String? _redirect(
    GoRouterState state,
    AuthenticationRepository authenticationRepository,
  ) {
    final isAuthenticated = authenticationRepository.isAuthenticated;

    if (isAuthenticated) {
      return maybeRedirect(state, RouteName.account.path);
    }

    return maybeRedirect(state, RouteName.signIn.path);
  }

  static String? maybeRedirect(GoRouterState state, String redirectPath) =>
      state.location == redirectPath ? null : redirectPath;
}
