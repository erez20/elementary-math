import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:karin/presentation/game/second_page_provider.dart';
import 'package:karin/presentation/home/home_page.dart';
import 'package:karin/presentation/home/home_page_provider.dart';
import 'package:karin/presentation/navigation/navigation_provider.dart';
import 'package:karin/presentation/game/second_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'navigation',
      path: '/',
      builder: (context, state) => const NavigationProvider(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePageProvider(),
    ),
    GoRoute(
      path: '/shope',

      //builder: (context, state) => const SecondPageProvider(),
      pageBuilder: (context, state) => CustomTransitionPage<void>(
          transitionDuration: const Duration(milliseconds: 300),
          child: SecondPageProvider(),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeIn).animate(animation),
              child: child,
            );
          }),
    ),
  ],
);
