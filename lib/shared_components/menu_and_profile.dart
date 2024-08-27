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
        widget.menuAsyncValue.when(
          data: (menus) {
            return PullDownButton(
              itemBuilder: (context) => menus.map((main) {
                return PullDownMenuItem(
                  title: main.name,
                  onTap: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return CupertinoActionSheet(
                          title: Text(main.name),
                          actions: main.subMenu.map((subMenu) {
                            return CupertinoActionSheetAction(
                              onPressed: () {
                                swichCaseOnTapRoute(context, subMenu);
                                context.pop();
                              },
                              child: Text(subMenu.name,style: CupertinoTheme.of(context).textTheme.textStyle,),
                            );
                          }).toList(),
                          cancelButton: CupertinoActionSheetAction(
                            isDestructiveAction: true,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Cancel'),
                          ),
                        );
                      },
                    );
                  },
                );
              }).toList(),
              buttonBuilder: (context, showMenu) => CupertinoButton(
                onPressed: showMenu,
                padding: EdgeInsets.zero,
                child: Icon(CupertinoIcons.list_bullet),
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
      ],
    );
  }
}
