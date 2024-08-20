import 'package:oho_hero/config/routes/export.dart';

class RoleGroupScreen extends BaseStatefulWidget {
  const RoleGroupScreen({Key? key}) : super(key: key);

  @override
  _RoleGroupScreenState createState() => _RoleGroupScreenState();
}


class _RoleGroupScreenState extends BaseState<RoleGroupScreen> {
  @override
  Widget buildDesktop(
      BuildContext context, SizingInformation sizingInformation) {
    return Center(
      child: SizedBox(width: 1200, child: content()),
    );
  }

  @override
  Widget? buildTablet(
      BuildContext context, SizingInformation sizingInformation) {
    return content();
  }

  @override
  Widget buildMobile(
      BuildContext context, SizingInformation sizingInformation) {
    return content();
  }

  Widget content() {
    return SafeArea(
      child: Center(
          child: Center(
        child: Text(
          'RoleGroupScreen',
          style: CustomTextStyles.content1,
        ),
      )),
    );
  }
}
