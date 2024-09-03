import 'package:flutter/material.dart';
import 'package:oho_hero/config/routes/export.dart';

class AccountSecurityScreen extends BaseStatefulWidget {
  static String path = 'market-dashboard';
  const AccountSecurityScreen({Key? key}) : super(key: key);

  @override
  _AccountSecurityScreenState createState() => _AccountSecurityScreenState();
}

class _AccountSecurityScreenState extends BaseState<AccountSecurityScreen> {
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
        child: SizedBox(
          width: buildDesktop ? 1200 : null,
          child: Column(
            children: [
              Container(
                color: CupertinoTheme.of(context).barBackgroundColor,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: Icon(CupertinoIcons.list_bullet),
                        onPressed: () {},
                      ),
                    ),
                    Expanded(child: CupertinoSearchTextField()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: Icon(CupertinoIcons.add_circled),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    BoxAdapterCustom(
                      buildDesktop: buildDesktop,
                      child: CustomTableCupertino(context: context),
                    ),
                  ],
                ),
              ),
              footer(
                context: context,
                widget: widget,
                buildDesktop: buildDesktop,
                currentPage: 1,
                totalPage: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTableCupertino extends StatelessWidget {
  const CustomTableCupertino({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return CupertinoListSection.insetGrouped(
      backgroundColor: CupertinoTheme.of(context).barBackgroundColor,
      children: List.generate(
        50,
        (index) => CupertinoListTile(
          leading: Text((index + 1).toString()),
          title: Text('Firstname Lastname ${index + 1}',
              style: CupertinoTheme.of(context).textTheme.textStyle),
          subtitle: Row(
            children: [
              if (true)
                Expanded(
                  flex: 4,
                  child: Text('Company : TCS'),
                ),
              if (true)
                Expanded(
                  flex: 4,
                  child: Text('Branch : KKC'),
                ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 8,
                    left: 8,
                  ),
                  child: Text(
                    'Role : Admin',
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text('Status : Active'),
              ),
            ],
          ),
          trailing: IconButton(
              onPressed: () {}, icon: Icon(CupertinoIcons.right_chevron)),
        ),
      ),
    );
  }
}

class footer extends StatefulWidget {
  const footer({
    super.key,
    required this.context,
    required this.widget,
    required this.buildDesktop,
    this.onOpen,
    this.nextPage,
    this.backPage,
    required this.currentPage,
    required this.totalPage,
  });

  final BuildContext context;
  final AccountSecurityScreen widget;
  final bool buildDesktop;
  final void Function(int index)? onOpen;
  final void Function(int index)? nextPage;
  final void Function(int index)? backPage;
  final int currentPage;
  final int totalPage;

  @override
  State<footer> createState() => _footerState();
}

class _footerState extends State<footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.buildDesktop ? 1200 : null,
      color: CupertinoTheme.of(context).barBackgroundColor,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: widget.currentPage - 1 == 0
                ? null
                : () {
                    widget.nextPage!(widget.currentPage - 1);
                  },
            icon: const Icon(Icons.arrow_left_sharp),
          ),
          Text('หน้า${widget.currentPage}/${widget.totalPage}',
              style: CupertinoTheme.of(context).textTheme.textStyle),
          IconButton(
            onPressed: widget.totalPage - widget.currentPage == 0
                ? null
                : () {
                    widget.nextPage!(widget.currentPage + 1);
                    setState(() {});
                  },
            icon: const Icon(Icons.arrow_right_sharp),
          ),
        ],
      ),
    );
  }
}
