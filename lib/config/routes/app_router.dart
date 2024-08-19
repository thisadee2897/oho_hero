import 'package:oho_hero/config/routes/export.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');
final appRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      // navigatorKey: _rootNavigatorKey,
      routes: [
        GoRoute(
          path: '/',
          // parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            final isLoggedIn = ref.watch(isLoggedInProvider);
            if (isLoggedIn.value == true) {
              return const NoTransitionPage(child: MainScreen());
            } else {
              return const NoTransitionPage(child: LoginScreen());
            }
          },
        ),
        GoRoute(
          path: Routes.login,
          // parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: LoginScreen());
          },
        ),
        GoRoute(
          path: Routes.home,
          // parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: MainScreen());
          },
        ),
      ],
    );
  },
);
