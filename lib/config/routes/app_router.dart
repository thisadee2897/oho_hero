import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/controllers/login_controller.dart';
import '../../features/auth/views/login_screen.dart';
import '../../features/main/views/main_screen.dart';
import '../../splash_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/',
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) {
          final isLoggedIn = ref.watch(isLoggedInProvider);
          if (isLoggedIn.isLoading) {
            return const NoTransitionPage(child: SplashScreen());
          }

          if (isLoggedIn.value == true) {
            return const NoTransitionPage(child: MainScreen());
          } else {
            return const NoTransitionPage(child: LoginScreen());
          }
        },
      ),
    ],
  );
});
