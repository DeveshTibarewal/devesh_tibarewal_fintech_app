import 'package:devesh_tibarewal_fintech_app/src/feature/auth/providers/auth_provider.dart';
import 'package:devesh_tibarewal_fintech_app/src/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/theme_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      await Future.delayed(const Duration(seconds: 2));
      if (mounted) {
        if (ref.read(authProvider.notifier).isLoggedIn) {
          context.go(RouteNames.home.asPath);
        } else {
          context.go(RouteNames.login.asPath);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 100),
          ],
        ),
      ),
    );
  }
}
