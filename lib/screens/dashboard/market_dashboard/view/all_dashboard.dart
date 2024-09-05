import 'package:oho_hero/config/routes/export.dart';

class MarketDashboardScreen extends BaseStatefulWidget {
  static String path = 'market-dashboard';
  const MarketDashboardScreen({Key? key}) : super(key: key);

  @override
  _MarketDashboardScreenState createState() => _MarketDashboardScreenState();
}

class _MarketDashboardScreenState extends BaseState<MarketDashboardScreen> {
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
