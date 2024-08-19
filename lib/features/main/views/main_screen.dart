import 'package:flutter/cupertino.dart';
import 'package:oho_hero/config/routes/export.dart';

enum ComapnyItem { updateCompany, addBranch, addSubCompany }

class MainScreen extends BaseStatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

int? currentValue;

class _MainScreenState extends BaseState<MainScreen> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [ 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoSearchTextField(
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoSlidingSegmentedControl(
                onValueChanged: (int? newValue) {
                  setState(() {
                    currentValue = newValue;
                  });
                },
                children: {
                  0: Text('All'),
                  1: Text('SCOPE 1'),
                  2: Text('SCOPE 2'),
                  3: Text('SCOPE 3'),
                },
                groupValue: currentValue,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      children: List.generate(
                        50,
                        (index) => CupertinoListTile.notched(
                          trailing: CupertinoSwitch(
                              value: index == 1, onChanged: (bool value) {}),
                          title: Text('Data${index + 1}'),
                          leading: Text((index + 1).toString()),
                          onTap: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
