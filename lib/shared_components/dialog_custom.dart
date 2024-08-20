import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:oho_hero/config/routes/export.dart';

class DialogCustom extends StatelessWidget {
  final VoidCallback onLogout;
  const DialogCustom({Key? key, required this.onLogout}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return CupertinoAlertDialog(
        title: Text('Confirm Logout'),
        content: Text('Are you sure you want to logout?'),
        actions: <Widget>[
          ButtonCustom(
            buttonType: ButtonType.outlined,
            onTap: () => context.pop(),
            text: 'Cancel',
          ),
          ButtonCustom(
            buttonType: ButtonType.filled,
            onTap: onLogout,
            text: 'Logout',
          ),
        ],
      );
    } else {
      return Platform.isIOS
          ? CupertinoAlertDialog(
              title: Text('Confirm Logout'),
              content: Text('Are you sure you want to logout?'),
              actions: <CupertinoDialogAction>[
                CupertinoDialogAction(
                  onPressed: () => context.pop(),
                  child: Text('Cancel'),
                ),
                CupertinoDialogAction(
                  onPressed: onLogout,
                  child: Text('Logout'),
                  isDestructiveAction: true,
                ),
              ],
            )
          : CupertinoAlertDialog(
              title: Text('Confirm Logout'),
              content: Text('Are you sure you want to logout?'),
              actions: <Widget>[
                ButtonCustom(
                  buttonType: ButtonType.outlined,
                  onTap: () => context.pop(),
                  text: 'Cancel',
                ),
                ButtonCustom(
                  buttonType: ButtonType.filled,
                  onTap: onLogout,
                  text: 'Logout',
                ),
              ],
            );
    }
  }
}
