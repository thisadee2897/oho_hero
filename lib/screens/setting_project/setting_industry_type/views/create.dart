import 'package:oho_hero/config/routes/export.dart';

class IndustryTypeCreate extends BaseStatefulWidget {
  const IndustryTypeCreate({Key? key}) : super(key: key);
  @override
  _IndustryTypeCreateState createState() => _IndustryTypeCreateState();
}

class _IndustryTypeCreateState extends BaseState<IndustryTypeCreate> {
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
                    'IndustryTypeCreate ${index+1}',
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
