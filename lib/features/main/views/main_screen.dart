import 'package:flutter/material.dart';
import 'package:responsive_builder/src/sizing_information.dart';
import 'package:oho_hero/config/themes/themes.dart';
import 'package:oho_hero/shared_components/base_full_widget.dart';

class MainScreen extends BaseStatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends BaseState<MainScreen> {
  @override
  Widget buildDesktop(
      BuildContext context, SizingInformation sizingInformation) {
    return Scaffold(
      body: Center(
          child: Text(
        'DESKTOP',
        style: CustomTextStyles.header1,
      )),
    );
  }

  @override
  Widget? buildTablet(
      BuildContext context, SizingInformation sizingInformation) {
    return Scaffold(
      body: Center(
          child: Text(
        'TABLET',
        style: CustomTextStyles.header1,
      )),
    );
  }

  @override
  Widget buildMobile(
      BuildContext context, SizingInformation sizingInformation) {
    return Scaffold(
      body: Center(
          child: Text(
        'MOBILE',
        style: CustomTextStyles.header1,
      )),
    );
  }
}
