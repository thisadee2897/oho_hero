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
                        onTap: () {
                          print(subMenu.path);
                          switch (subMenu.path) {
                            case 'setting-company':
                              context.go(Routes.company);
                            case 'setting-account-security':
                              context.go(Routes.account);
                          }
                        },
                      );
                    }).toList(),
                    buttonBuilder: (context, showMenu) => CupertinoButton(
                      onPressed: showMenu,
                      padding: EdgeInsets.zero,
                      child: Text(menus[i].name),
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
                                print(subMenu.path);
                                switch (subMenu.path) {
                                  case 'setting-company':
                                    context.go(Routes.company);
                                  case 'setting-account-security':
                                    context.go(Routes.account);
                                }
                                Navigator.pop(context);
                              },
                              child: Text(subMenu.name),
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
