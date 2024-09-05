import 'package:oho_hero/config/routes/export.dart';

class SearchSubDistrict extends BaseStatefulWidget {
  static String path = 'search-sub-district';
  final String previousPageTitle;
  const SearchSubDistrict(
    this.previousPageTitle, {
    Key? key,
  }) : super(key: key, subPage: true);

  @override
  _SearchSubDistrictState createState() => _SearchSubDistrictState();
}

class _SearchSubDistrictState extends BaseState<SearchSubDistrict> {
  TextEditingController textSearch = TextEditingController();
  @override
  Widget buildDesktop(
      BuildContext context, SizingInformation sizingInformation) {
    return Center(
      child: SizedBox(width: 1200, child: content(buildDesktop: true)),
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

  Widget content(
      {int crossAxisCount = 1,
      double paddingDesktop = 0.0,
      bool buildDesktop = false}) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              previousPageTitle: widget.previousPageTitle,
              alwaysShowMiddle: false,
              automaticallyImplyTitle: false,
              // middle: !buildDesktop ? Text('Subdistrict/Quarter') : null,
              trailing: !buildDesktop ? Text('Subdistrict/Quarter') : null,
              largeTitle: Center(
                child: SizedBox(
                  width: buildDesktop ? 1200 : null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (buildDesktop) Text('Subdistrict/Quarter'),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 20),
                          child: CupertinoSearchTextField(
                            controller: textSearch,
                            placeholder: 'Please input the Subdistrict/Quarter',
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            BoxAdapterCustom(
              buildDesktop: buildDesktop,
              child: BackgroundCustom(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      50,
                      (index) => CupertinoListTile(
                        title: Text(
                          'Sudistrict Name ${index + 1}',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
