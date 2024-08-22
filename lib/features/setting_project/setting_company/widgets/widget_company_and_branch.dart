import 'package:oho_hero/config/routes/export.dart';

class ListCompany extends StatefulWidget {
  final String id;
  final Widget title;
  final Widget details;
  final Widget? subtitle;

  const ListCompany({
    Key? key,
    required this.title,
    required this.details,
    this.subtitle,
    required this.id,
  }) : super(key: key);

  @override
  _ListCompanyState createState() => _ListCompanyState();
}

class _ListCompanyState extends State<ListCompany>
    with TickerProviderStateMixin {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoListTile(
          leading: Icon(CupertinoIcons.briefcase),
          title: widget.title,
          subtitle: widget.subtitle,
          trailing: Row(
            children: [
              CupertinoButton(
                onPressed: _toggleExpand,
                child: Icon(
                  _isExpanded
                      ? CupertinoIcons.chevron_down
                      : CupertinoIcons.chevron_up,
                ),
              ),
              PullDownButton(
                itemBuilder: (context) => [
                  PullDownMenuItem(
                    title: 'Edit Comapny',
                    onTap: () {
                      GoRouter.of(context)
                          .go('${Routes.company}/${Routes.editCompany}/${widget.id}');
                    },
                  ),
                  PullDownMenuItem(
                    title: 'Create Branch',
                    onTap: () {},
                  ),
                  PullDownMenuItem(
                    title: 'create organization',
                    onTap: () {},
                  ),
                ],
                buttonBuilder: (context, showMenu) => CupertinoButton(
                  onPressed: showMenu,
                  padding: EdgeInsets.zero,
                  child: Icon(
                    CupertinoIcons.bars,
                    // color: CupertinoDynamicColor.resolve(
                    //   CupertinoDynamicColor.withBrightness(
                    //     color: CupertinoColors.darkBackgroundGray,
                    //     darkColor: CupertinoColors.lightBackgroundGray,
                    //   ),
                    //   context,
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ),
        AnimatedSize(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          child: _isExpanded
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: widget.details,
                )
              : Container(),
        ),
      ],
    );
  }
}

class ListBranch extends StatefulWidget {
  final Widget title;
  final Widget? subtitle;

  const ListBranch({
    Key? key,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  _ListBranchState createState() => _ListBranchState();
}

class _ListBranchState extends State<ListBranch> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      leading: Icon(CupertinoIcons.location_solid),
      title: widget.title,
      subtitle: widget.subtitle,
      trailing: Row(
        children: [
          PullDownButton(
            itemBuilder: (context) => [
              PullDownMenuItem(
                title: 'Edit Branch',
                onTap: () {},
              ),
              PullDownMenuItem(
                title: 'Assets',
                onTap: () {},
              ),
              PullDownMenuItem(
                title: 'Activities',
                onTap: () {},
              ),
            ],
            buttonBuilder: (context, showMenu) => CupertinoButton(
              onPressed: showMenu,
              padding: EdgeInsets.zero,
              child: Icon(
                CupertinoIcons.bars,
                // color: CupertinoDynamicColor.resolve(
                //   CupertinoDynamicColor.withBrightness(
                //     color: CupertinoColors.darkBackgroundGray,
                //     darkColor: CupertinoColors.lightBackgroundGray,
                //   ),
                //   context,
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
