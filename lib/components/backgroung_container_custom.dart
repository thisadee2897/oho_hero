import 'package:flutter/cupertino.dart';

class BackgroundCustom extends StatelessWidget {
  const BackgroundCustom({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: CupertinoTheme.of(context).barBackgroundColor,
      ),
      child: child,
    );
  }
}
