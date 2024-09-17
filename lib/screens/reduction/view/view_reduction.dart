import 'package:oho_hero/config/routes/export.dart';

class ReductionScreen extends BaseStatefulWidget {
  const ReductionScreen({Key? key}) : super(key: key);

  @override
  _AccountSecurityScreenState createState() => _AccountSecurityScreenState();
}

class _AccountSecurityScreenState extends BaseState<ReductionScreen> {
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
      child: Center(child: Text('ReductionScreen')),
    );
  }
}
