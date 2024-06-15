import 'package:go_router/go_router.dart';
import 'package:karin/presentation/home/home_page.dart';
import 'package:karin/second_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name:
          'home', // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/shope',
      builder: (context, state) => SecondPage(),
    ),
  ],
);
