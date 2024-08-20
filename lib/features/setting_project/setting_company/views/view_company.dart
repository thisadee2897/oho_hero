import 'package:oho_hero/config/routes/export.dart';

class ShowCompanyScreen extends BaseStatefulWidget {
  const ShowCompanyScreen({Key? key}) : super(key: key);

  @override
  _ShowCompanyScreenState createState() => _ShowCompanyScreenState();
}


class _ShowCompanyScreenState extends BaseState<ShowCompanyScreen> {
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
          'ShowCompanyScreen',
          style: CustomTextStyles.content1,
        ),
      )),
    );
  }
}
