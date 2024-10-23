import 'package:devesh_tibarewal_fintech_app/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/common/hive/hive_service.dart';
import 'src/common/providers/theme_provider.dart';
import 'src/routes/router_provider.dart';
import 'src/theme/util.dart';

Future<void> main() async {
  await HiveService.init();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      await ref.read(themeProvider.notifier).getTheme();
    });
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Poppins", "Poppins");
    MaterialTheme theme = MaterialTheme(textTheme);

    final goRouterConfig = ref.watch(goRouterProvider);
    final themeMode = ref.watch(themeProvider);
    return MaterialApp.router(
      theme: themeMode ? theme.dark() : theme.light(),
      routerConfig: goRouterConfig,
    );
  }
}
