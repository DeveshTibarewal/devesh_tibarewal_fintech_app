import 'package:devesh_tibarewal_fintech_app/src/feature/auth/presentation/screens/register_screen.dart';
import 'package:devesh_tibarewal_fintech_app/src/feature/auth/providers/auth_provider.dart';
import 'package:devesh_tibarewal_fintech_app/src/feature/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../common/screens/error_screen.dart';
import '../common/screens/splash_screen.dart';
import '../feature/auth/presentation/screens/login_screen.dart';
import 'route_names.dart';

final _routeNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _routeNavigatorKey,
    initialLocation: RouteNames.splash.asPath,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final isLoggedIn = ref.read(authProvider.notifier).isLoggedIn;
      if (state.matchedLocation == RouteNames.splash.asPath && isLoggedIn) {
        return RouteNames.home.asPath;
      }
      if (state.matchedLocation != RouteNames.login.asPath && !isLoggedIn) {
        return RouteNames.login.asPath;
      }
      return null;
    },
    routes: [
      GoRoute(
        path: RouteNames.splash.asPath,
        name: RouteNames.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: RouteNames.login.asPath,
        name: RouteNames.login,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: RouteNames.register.asPath,
        name: RouteNames.register,
        builder: (context, state) => RegisterScreen(),
      ),
      GoRoute(
        path: RouteNames.home.asPath,
        name: RouteNames.home,
        builder: (context, state) => const HomeScreen(),
      )
    ],
    errorBuilder: (context, error) => ErrorScreen(error: error.toString()),
  );
});
