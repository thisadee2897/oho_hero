import 'package:oho_hero/config/routes/export.dart';

class CarbonProjectDashboardScreen extends BaseStatefulWidget {
  static String path = 'carbon-project-dashboard';
  const CarbonProjectDashboardScreen({Key? key}) : super(key: key);

  @override
  _CarbonProjectDashboardScreenState createState() =>
      _CarbonProjectDashboardScreenState();
}

class _CarbonProjectDashboardScreenState
    extends BaseState<CarbonProjectDashboardScreen> {
  TextEditingController provinceCtl = TextEditingController();
  @override
  Widget buildDesktop(
      BuildContext context, SizingInformation sizingInformation) {
    return content(
      buildDesktop: true,
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

  Widget content({bool buildDesktop = false}) {
    return SafeArea(
      child: Center(
        child: CustomScrollView(
          slivers: List.generate(
            50,
            (index) => BoxAdapterCustom(
              child: Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 50),
                child: Center(
                  child: Text(
                    'CarbonProjectDashboardScreen ${index + 1}',
                    style: CustomTextStyles.header1,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
