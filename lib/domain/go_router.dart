import 'package:go_router/go_router.dart';
import 'package:karin/presentation/game/second_page_provider.dart';
import 'package:karin/presentation/home/home_page.dart';
import 'package:karin/presentation/home/home_page_provider.dart';
import 'package:karin/presentation/navigation/navigation_provider.dart';
import 'package:karin/second_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name:
          'home', // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/',
      builder: (context, state) => const NavigationProvider(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePageProvider(),
    ),
    GoRoute(
      path: '/shope',
      builder: (context, state) => const SecondPageProvider(),
    ),
  ],
);
