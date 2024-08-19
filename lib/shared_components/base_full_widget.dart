import 'package:flutter/cupertino.dart';
import 'package:oho_hero/config/routes/export.dart';
import 'package:oho_hero/features/main/views/controllers/menu_controller.dart';


import 'responsive.dart';

abstract class BaseStatefulWidget extends ConsumerStatefulWidget {
  const BaseStatefulWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<BaseStatefulWidget> createState();
}

abstract class BaseState<T extends BaseStatefulWidget>
    extends ConsumerState<T> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: (sizing) => ScreenWidget(body: buildMobile(context, sizing)),
      desktop: (sizing) =>
          ScreenWidget(body: buildDesktop(context, sizing), isDesktop: true),
      tablet: (sizing) => ScreenWidget(
          body: buildTablet(context, sizing) ?? buildMobile(context, sizing)),
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
  });

  final body;
  final bool isDesktop;

  @override
  ConsumerState<ScreenWidget> createState() => _ScreenWidgetState();
}

class _ScreenWidgetState extends ConsumerState<ScreenWidget> {
  @override
  Widget build(BuildContext context) {
    final menuAsyncValue = ref.watch(menuProvider);
    final isLoggedIn = ref.watch(isLoggedInProvider);
    return CupertinoPageScaffold(
      navigationBar: isLoggedIn.value != true
          ? null
          : CupertinoNavigationBar(
              leading: Row(
                children: [
                  CircleAvatar(),
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
