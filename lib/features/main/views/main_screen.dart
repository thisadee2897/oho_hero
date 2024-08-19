import 'package:oho_hero/config/routes/export.dart';

enum ComapnyItem { updateCompany, addBranch, addSubCompany }

class MainScreen extends BaseStatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends BaseState<MainScreen> {
  @override
  Widget buildDesktop(
      BuildContext context, SizingInformation sizingInformation) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 50),
        child: Container(
          color: CustomColors.backgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "OHO HERO",
                style: CustomTextStyles.header1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: List.generate(
                      5,
                      (i) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MouseRegion(
                          onHover: (event) {},
                          child: PopupMenuButton<ComapnyItem>(
                            tooltip:'',
                            position: PopupMenuPosition.under,
                            child: Text('Main menu${i + 1}'),
                            onSelected: (ComapnyItem result) {
                              switch (result) {
                                case ComapnyItem.updateCompany:
                                  print('Update Organization selected');
                                  break;
                                case ComapnyItem.addBranch:
                                  print('Add Branch selected');
                                  break;
                                case ComapnyItem.addSubCompany:
                                  print('Add Sub Organization selected');
                                  break;
                              }
                            },
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry<ComapnyItem>>[
                              const PopupMenuItem<ComapnyItem>(
                                value: ComapnyItem.updateCompany,
                                child: Text('Update Organization'),
                              ),
                              const PopupMenuItem<ComapnyItem>(
                                value: ComapnyItem.addBranch,
                                child: Text('Add Branch'),
                              ),
                              const PopupMenuItem<ComapnyItem>(
                                value: ComapnyItem.addSubCompany,
                                child: Text('Add Sub Organization'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.account_circle_outlined))
                ],
              ),
            ],
          ),
        ),
      ),
      body: Center(
          child: Text(
        'DESKTOP',
        style: CustomTextStyles.header1,
      )),
    );
  }

  @override
  Widget? buildTablet(
      BuildContext context, SizingInformation sizingInformation) {
    return Scaffold(
      appBar: _appBar(context),
      drawer: Drawer(),
      body: Center(
          child: Text(
        'TABLET',
        style: CustomTextStyles.header1,
      )),
    );
  }

  @override
  Widget buildMobile(
      BuildContext context, SizingInformation sizingInformation) {
    return Scaffold(
      appBar: _appBar(context),
      drawer: Drawer(),
      body: Center(
          child: Text(
        'MOBILE',
        style: CustomTextStyles.header1,
      )),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors.primaryColor,
      // actions: [
      //   IconButton(
      //     onPressed: () {
      //       showDialog(
      //         context: context,
      //         builder: (BuildContext context) =>
      //             DialogCustom(onLogout: () async {
      //           ref.read(loginProvider.notifier).logout();
      //           context.go('/');
      //           context.pop();
      //         }),
      //       );
      //     },
      //     icon: Icon(Icons.person_outline_sharp),
      //   ),
      // ],
    );
  }
}
