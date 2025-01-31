import 'package:oho_hero/config/routes/export.dart';

import 'package:oho_hero/splash_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');
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
            if (isLoggedIn.isLoading) {
              return const NoTransitionPage(child: SplashScreen());
            }
            if (isLoggedIn.value == true) {
              return const NoTransitionPage(child: AllDashboardScreen());
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
          path: Routes.allDashboard,
          // parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: AllDashboardScreen());
          },
        ),
        GoRoute(
          path: Routes.footprint,
          // parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: FootprintScreen());
          },
        ),
        GoRoute(
          path: Routes.reduction,
          // parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: ReductionScreen());
          },
        ),
        GoRoute(
          path: Routes.company,
          // parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: CompanyScreen());
          },
          routes: [
            GoRoute(
                path: Routes.createCompany,
                pageBuilder: (context, state) {
                  return NoTransitionPage(child: CreateCompanyScreen(Routes.company));
                },
                routes: [
                  GoRoute(
                    path: SearchSubDistrict.path,
                    pageBuilder: (context, state) {
                      return NoTransitionPage(child: SearchSubDistrict('${Routes.company}/${SearchSubDistrict.path}'));
                    },
                  ),
                ]),
            GoRoute(
              path: '${Routes.editCompany}/:id',
              pageBuilder: (context, state) {
                String? id = state.pathParameters['id'];
                return NoTransitionPage(child: UpdateCompanyScreen(Routes.company, id!));
              },
            ),
          ],
        ),
        GoRoute(
          path: Routes.rolegroup,
          // parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: RoleGroupScreen());
          },
        ),
        //setting-account-security
        GoRoute(
          path: Routes.account,
          // parentNavigatorKey: _rootNavigatorKey,
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: AccountSecurityScreen());
          },
        ),
        //Dashboard
        GoRoute(
            path: Routes.allDashboard,
            pageBuilder: (context, state) {
              return const NoTransitionPage(child: AllDashboardScreen());
            },
            routes: [
              GoRoute(
                path: "${Routes.dashEmission}/:id",
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: FootprintDashboardScreen());
                },
              ),
              GoRoute(
                path: "${Routes.dashReduction}/:id",
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: CarbonProjectDashboardScreen());
                },
              ),
              GoRoute(
                path: "${Routes.dashMarket}/:id",
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: MarketDashboardScreen());
                },
              ),
            ]),
      ],
    );
  },
);
