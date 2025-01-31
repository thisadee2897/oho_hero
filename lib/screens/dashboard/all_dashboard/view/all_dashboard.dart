import 'package:oho_hero/config/routes/export.dart';

class AllDashboardScreen extends BaseStatefulWidget {
  const AllDashboardScreen({Key? key}) : super(key: key);

  @override
  _AllDashboardScreenState createState() => _AllDashboardScreenState();
}

class _AllDashboardScreenState extends BaseState<AllDashboardScreen> {
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
      child: Center(child: Text('All Dashboard')),
    );
  }
}
