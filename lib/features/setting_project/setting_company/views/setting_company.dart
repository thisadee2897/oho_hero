import 'package:oho_hero/config/routes/export.dart';

class CompanyScreen extends BaseStatefulWidget {
  const CompanyScreen({Key? key}) : super(key: key);

  @override
  _CompanyScreenState createState() => _CompanyScreenState();
}

class _CompanyScreenState extends BaseState<CompanyScreen> {
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
    List<Company> companyData = ref.watch(companyDataProvider);
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            automaticallyImplyLeading: false,
            largeTitle: CupertinoSearchTextField(),
            trailing: GestureDetector(
              child: Icon(
                CupertinoIcons.add_circled,
                size: 25.0,
              ),
              onTap: () => context.go(Routes.createCompany),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(children: [..._buildCompanyList(companyData)]),
          ),
        ],
      ),
    );
  }

  List<ListBranch> _buildBranchList(List<Branch> branches) {
    return branches.map((branch) {
      return ListBranch(
        title: Text(branch.branchName),
        subtitle: Text(branch.id),
      );
    }).toList();
  }

  List<ListCompany> _buildCompanyList(List<Company>? company) {
    return company!.map((comP) {
      return ListCompany(
        title: Text(comP.companyName),
        subtitle: Text(comP.id),
        details: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ..._buildBranchList(comP.branches),
            if (comP.subCompanies != null && comP.subCompanies!.isNotEmpty)
              ..._buildCompanyList(comP.subCompanies)
          ],
        ),
      );
    }).toList();
  }
}
