import 'dart:async';

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
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(subDistrictProvider.notifier).read(search: '');
    });
  }

  TextEditingController textSearch = TextEditingController();
  Timer? _debounce;
  @override
  void dispose() {
    _debounce?.cancel();
    textSearch.dispose();
    super.dispose();
  }

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
    AsyncValue<List<SubdistrictModel>> listData =
        ref.watch(subDistrictProvider);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: [
            header(buildDesktop),
            BoxAdapterCustom(
              buildDesktop: buildDesktop,
              child: BackgroundCustom(
                child: SingleChildScrollView(
                  child: listData.when(
                    loading: _loading,
                    error: (error, stack) => _error(context, error),
                    data: (data) => _data(context, data),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _error(BuildContext context, Object error) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      customAlert(context, error.toString());
    });
    return Text(error.toString());
  }

  Widget _loading() {
    return Center(
      child: CupertinoActivityIndicator(),
    );
  }

  Widget _data(BuildContext context, List<SubdistrictModel> data) {
    return Column(
      children: List.generate(
        data.length,
        (i) => CupertinoListTile(
          title: Text(data[i].name ?? ''),
          subtitle: Row(
            children: [
              Text(data[i].districtName ?? ''),
              Text(data[i].provinceName ?? '')
            ],
          ),
        ),
      ),
    );
  }

  CupertinoSliverNavigationBar header(bool buildDesktop) {
    return CupertinoSliverNavigationBar(
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
              // if (buildDesktop) Text('Subdistrict/Quarter'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: CupertinoSearchTextField(
                    controller: textSearch,
                    placeholder: 'Please input the Subdistrict/Quarter',
                    onChanged: (value) {
                      // ref
                      //     .read(subDistrictProvider.notifier)
                      //     .read(search: value);
                      if (_debounce?.isActive ?? false) _debounce!.cancel();
                      _debounce = Timer(const Duration(seconds: 1), () {
                        ref
                            .read(subDistrictProvider.notifier)
                            .read(search: value);
                      });
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
