import 'package:flutter/material.dart';
import 'package:oho_hero/config/routes/export.dart';

class FootprintScreen extends BaseStatefulWidget {
  const FootprintScreen({Key? key}) : super(key: key);

  @override
  _AccountSecurityScreenState createState() => _AccountSecurityScreenState();
}

class _AccountSecurityScreenState extends BaseState<FootprintScreen> {
  TextEditingController provinceCtl = TextEditingController();
  @override
  Widget buildDesktop(BuildContext context, SizingInformation sizingInformation) {
    return content(
      buildDesktop: true,
    );
  }

  @override
  Widget? buildTablet(BuildContext context, SizingInformation sizingInformation) {
    return content();
  }

  @override
  Widget buildMobile(BuildContext context, SizingInformation sizingInformation) {
    return content();
  }

  Widget content({bool buildDesktop = false}) {
    return SafeArea(
      bottom: false,
      child: Center(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              automaticallyImplyLeading: false,
              largeTitle: CupertinoSearchTextField(
                controller: provinceCtl,
                onChanged: (value) {
                  print(value);
                },
              ),
              trailing: GestureDetector(
                child: Icon(
                  CupertinoIcons.add_circled,
                  size: 25.0,
                ),
                onTap: () {},
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container();
                },
                childCount: 100, // Set to the number of items you want in the list
              ),
            ),
          ],
        ),
      ),
    );
  }
}
