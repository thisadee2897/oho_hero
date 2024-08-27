import 'package:oho_hero/config/routes/export.dart';

class AllDashboardScreen extends BaseStatefulWidget {
  static String path = 'all-dashboard';
  const AllDashboardScreen({Key? key}) : super(key: key);

  @override
  _AllDashboardScreenState createState() => _AllDashboardScreenState();
}

class _AllDashboardScreenState extends BaseState<AllDashboardScreen> {
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
                padding: const EdgeInsets.only(top: 50,bottom: 50),
                child: Center(
                  child: Text(
                    'MarketDashboardScreen ${index+1}',
                    style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
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
