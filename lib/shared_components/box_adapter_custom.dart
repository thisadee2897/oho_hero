import 'package:flutter/cupertino.dart';

class BoxAdapterCustom extends StatelessWidget {
  const BoxAdapterCustom({
    super.key,
    this.buildDesktop = false,
    required this.child,
  });
  final bool buildDesktop;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Container(
          width: buildDesktop ? 1200 : null,
          child: child,
        ),
      ),
    );
  }
}
