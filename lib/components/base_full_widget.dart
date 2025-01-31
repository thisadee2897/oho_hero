import 'package:oho_hero/config/routes/export.dart';

import 'responsive.dart';

abstract class BaseStatefulWidget extends ConsumerStatefulWidget {
  final bool subPage;
  const BaseStatefulWidget({super.key, this.subPage = false});

  @override
  ConsumerState<BaseStatefulWidget> createState();
}

abstract class BaseState<T extends BaseStatefulWidget>
    extends ConsumerState<T> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: (sizing) => ScreenWidget(
        showToolsBar: widget.subPage,
        body: buildMobile(context, sizing),
      ),
      desktop: (sizing) => ScreenWidget(
          showToolsBar: widget.subPage,
          body: buildDesktop(context, sizing),
          isDesktop: true),
      tablet: (sizing) => ScreenWidget(
        showToolsBar: widget.subPage,
        body: buildTablet(context, sizing) ?? buildMobile(context, sizing),
      ),
    );
  }

  Widget buildMobile(BuildContext context, SizingInformation sizingInformation);

  Widget buildDesktop(
      BuildContext context, SizingInformation sizingInformation);

  Widget? buildTablet(
      BuildContext context, SizingInformation sizingInformation) {
    return null;
  }
}

class ScreenWidget extends ConsumerStatefulWidget {
  const ScreenWidget({
    super.key,
    required this.body,
    this.isDesktop = false,
    this.showToolsBar = true,
  });

  final Widget body;
  final bool isDesktop;
  final bool showToolsBar;

  @override
  ConsumerState<ScreenWidget> createState() => _ScreenWidgetState();
}

class _ScreenWidgetState extends ConsumerState<ScreenWidget> {
  @override
  Widget build(BuildContext context) {
    final menuAsyncValue = ref.watch(menuProvider);
    final isLoggedIn = ref.watch(isLoggedInProvider);
    return CupertinoPageScaffold(
      navigationBar: isLoggedIn.value != true || widget.showToolsBar
          ? null
          : CupertinoNavigationBar(
              leading: Row(
                children: [
                  ClipOval(
                    child: Container(
                      width: 35,
                      height: 35,
                      color: CupertinoColors.systemBrown,
                      // child: Image.network(
                      //   '',
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('OHO HERO'),
                  )
                ],
              ),
              trailing: widget.isDesktop
                  ? MenuForDesktop(menuAsyncValue: menuAsyncValue, ref: ref)
                  : MenuForMobile(menuAsyncValue: menuAsyncValue, ref: ref),
            ),
      child: widget.body,
    );
  }
}
