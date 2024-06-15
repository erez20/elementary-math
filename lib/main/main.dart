import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:karin/main/di.dart';
import 'package:karin/presentation/navigation/navigation_provider.dart';

import '../domain/go_router.dart';

void main() {
  diInit();
  Fimber.plantTree(DebugTree());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) => NavigationProvider(child: child!),
      routerConfig: router,
      themeMode: ThemeMode.light,
    );
  }
}
