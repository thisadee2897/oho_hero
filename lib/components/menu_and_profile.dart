import 'package:oho_hero/config/routes/export.dart';

showLogOut(BuildContext context, WidgetRef ref) {
  return showCupertinoDialog(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text("Logout"),
      content: Text("Are you sure you want to logout?"),
      actions: <Widget>[
        CupertinoDialogAction(
          onPressed: () {
            context.go(Routes.mainScreen);
            ref.read(loginProvider.notifier).logout();
            Navigator.pop(context);
          },
          child: Text("Logout"),
        ),
        CupertinoDialogAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Cancel"),
        ),
      ],
    ),
  );
}

void swichCaseOnTapRoute(BuildContext context, SubMenu subMenu) {
  print(subMenu.path);
  switch (subMenu.path) {
    case 'setting-company':
      context.go(Routes.company);
    case 'setting-account-security':
      context.go(Routes.account);
    case 'dashboard':
      context.go(Routes.allDashboard);
    case 'dashboard-footprint':
      context.go("${Routes.allDashboard}/${Routes.dashEmission}/1");
    case 'dashboard-carbon-project':
      context.go("${Routes.allDashboard}/${Routes.dashReduction}/2");
    case 'dashboard-market':
      context.go("${Routes.allDashboard}/${Routes.dashMarket}/3");
  }
}

class MenuForDesktop extends ConsumerStatefulWidget {
  const MenuForDesktop({
    super.key,
    required this.menuAsyncValue,
    required this.ref,
  });

  final AsyncValue<List<MainMenu>> menuAsyncValue;
  final WidgetRef ref;

  @override
  ConsumerState<MenuForDesktop> createState() => _MenuForDesktopState();
}

class _MenuForDesktopState extends ConsumerState<MenuForDesktop> {
  @override
  Widget build(BuildContext context) {
    final locale = ref.watch(localeProvider);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.menuAsyncValue.when(
          data: (menus) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: List.generate(
                menus.length,
                (i) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PullDownButton(
                    itemBuilder: (context) => menus[i].subMenu.map((subMenu) {
                      return PullDownMenuItem(
                        title: subMenu.name,
                        onTap: () => swichCaseOnTapRoute(context, subMenu),
                      );
                    }).toList(),
                    buttonBuilder: (context, showMenu) => CupertinoButton(
                      onPressed: showMenu,
                      padding: EdgeInsets.zero,
                      child: Text(
                        menus[i].name,
                        style: CupertinoTheme.of(context).textTheme.textStyle,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          loading: () => CupertinoActivityIndicator(),
          error: (error, stack) => Text('Error: $error'),
        ),
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            showLogOut(context, widget.ref);
          },
          child: Icon(CupertinoIcons.person),
        ),
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Locale newLocale = locale.languageCode == 'th' ? const Locale('en') : const Locale('th');
            switchLanguage(ref, newLocale);
          },
          child: Text(locale.languageCode == 'th' ? 'TH' : 'EN'),
        ),
      ],
    );
  }
}

class MenuForMobile extends ConsumerStatefulWidget {
  const MenuForMobile({
    super.key,
    required this.menuAsyncValue,
    required this.ref,
  });

  final AsyncValue<List<MainMenu>> menuAsyncValue;
  final WidgetRef ref;

  @override
  ConsumerState<MenuForMobile> createState() => _MenuForMobileState();
}

class _MenuForMobileState extends ConsumerState<MenuForMobile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext builder) {
                return WidgetMenu();
              },
            );
          },
          child: Icon(
            CupertinoIcons.square_grid_4x3_fill,
            color: CupertinoColors.systemGrey2,
          ),
        ),
        // widget.menuAsyncValue.when(
        //   data: (menus) {
        //     return PullDownButton(
        //       itemBuilder: (context) => menus.map((main) {
        //         return PullDownMenuItem(
        //           title: main.name,
        //           onTap: () {
        //             print('object');
        //             FullscreenDialogExample();
        //             // showCupertinoModalPopup(
        //             //   context: context,
        //             //   builder: (context) {
        //             //     return CupertinoActionSheet(
        //             //       title: Text(main.name),
        //             //       actions: main.subMenu.map((subMenu) {
        //             //         return CupertinoActionSheetAction(
        //             //           onPressed: () {
        //             //             swichCaseOnTapRoute(context, subMenu);
        //             //             context.pop();
        //             //           },
        //             //           child: Text(
        //             //             subMenu.name,
        //             //             style: CupertinoTheme.of(context).textTheme.textStyle,
        //             //           ),
        //             //         );
        //             //       }).toList(),
        //             //       cancelButton: CupertinoActionSheetAction(
        //             //         isDestructiveAction: true,
        //             //         onPressed: () {
        //             //           Navigator.pop(context);
        //             //         },
        //             //         child: Text('Cancel'),
        //             //       ),
        //             //     );
        //             //   },
        //             // );
        //           },
        //         );
        //       }).toList(),
        //       buttonBuilder: (context, showMenu) => CupertinoButton(
        //         onPressed: showMenu,
        //         padding: EdgeInsets.zero,
        //         child: Icon(
        //           CupertinoIcons.square_grid_4x3_fill,
        //           color: CupertinoColors.systemGrey2,
        //         ),
        //       ),
        //     );
        //   },
        //   loading: () => CupertinoActivityIndicator(),
        //   error: (error, stack) => Text('Error: $error'),
        // ),

        CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            showLogOut(context, widget.ref);
          },
          child: Icon(CupertinoIcons.person),
        ),
      ],
    );
  }
}

class WidgetMenu extends ConsumerWidget {
  const WidgetMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<MainMenu>> listMenu = ref.watch(menuProvider);
    return listMenu.when(
        data: (menuList) => SafeArea(
              top: true,
              bottom: false,
              child: CupertinoPopupSurface(
                isSurfacePainted: true,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CupertinoButton(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Icon(CupertinoIcons.clear_thick, color: CupertinoColors.systemGrey2),
                        ),
                      ),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 3,
                          children: [
                            _buildMenuItem(context, 'assets/svg/dashboard.svg', 'Dashboard', onTap: () {
                              context.go(Routes.allDashboard);
                              context.pop();
                            }),
                            _buildMenuItem(context, 'assets/svg/footprint.svg', 'Footprint', onTap: () {
                              context.go(Routes.footprint);
                              context.pop();
                            }),
                            _buildMenuItem(context, 'assets/svg/reduction.svg', 'Reduction', onTap: () {
                              context.go(Routes.reduction);
                              context.pop();
                            }),
                            _buildMenuItem(context, 'assets/svg/analytics.svg', 'Market', onTap: () {
                              context.go(Routes.company);
                              context.pop();
                            }),
                          ],
                        ),
                      ),
                      CupertinoListSection(
                        backgroundColor: CupertinoColors.systemGrey4.resolveFrom(context),
                        hasLeading: false,
                        header: Text(menuList.last.name),
                        children: List.generate(menuList.last.subMenu.length, (index) {
                          return CupertinoListTile(
                            title: Text(
                              menuList.last.subMenu[index].name,
                              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(fontSize: 12),
                            ),
                            leading: Icon(CupertinoIcons.settings),
                            trailing: Icon(CupertinoIcons.chevron_right),
                            onTap: () {
                              swichCaseOnTapRoute(context, menuList.last.subMenu[index]);
                              context.pop();
                            },
                          );
                        }),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
        loading: () => Center(child: CupertinoActivityIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')));
  }

  Widget _buildMenuItem(BuildContext context, String assetPath, String label, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            child: SvgPicture.asset(
              assetPath,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
