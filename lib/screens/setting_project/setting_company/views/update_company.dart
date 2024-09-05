import 'package:oho_hero/config/routes/export.dart';

class UpdateCompany extends BaseStatefulWidget {
  final String companyId;
  UpdateCompany({super.key, required this.companyId});

  @override
  _UpdateCompanyState createState() => _UpdateCompanyState();
}

class _UpdateCompanyState extends BaseState<UpdateCompany> {
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
        child: Text(
          'UpdateCompany \n${widget.companyId}',
          style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
        ),
      ),
    );
  }
}
