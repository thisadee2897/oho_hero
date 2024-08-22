import 'package:oho_hero/config/routes/export.dart';
import 'package:oho_hero/features/setting_project/setting_company/views/update_company.dart';
import 'package:oho_hero/features/setting_project/setting_company/widgets/search_sub_district.dart';

import 'package:oho_hero/splash_screen.dart';

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
                  return NoTransitionPage(
                      child: CreateCompanyScreen(Routes.company));
                },
                routes: [
                  GoRoute(
                    path: SearchSubDistrict.path,
                    pageBuilder: (context, state) {
                      return NoTransitionPage(
                          child: SearchSubDistrict(
                              '${Routes.company}/${SearchSubDistrict.path}'));
                    },
                  ),
                ]),
            GoRoute(
              path: '${Routes.editCompany}/:id',
              pageBuilder: (context, state) {
                String? id = state.pathParameters['id'];
                return NoTransitionPage(child: UpdateCompany(companyId: id!));
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
      ],
    );
  },
);
