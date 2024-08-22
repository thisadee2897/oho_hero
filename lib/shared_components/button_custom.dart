import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../config/constants/constants.dart';
import '../config/themes/themes.dart';

enum ButtonType { outlined, filled }

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    Key? key,
    this.color,
    required this.text,
    required this.onTap,
    this.enabled = true,
    this.height = kButtonHeight,
    this.width,
    this.textStyle = const TextStyle(),
    this.textColor,
    this.child,
    this.buttonType = ButtonType.filled,
    this.borderRadius = 8,
    this.loading = false,
    this.borderColor,
    this.elevation = 0,
  }) : super(key: key);

  final Color? color;
  final String text;
  final Function onTap;
  final bool enabled;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final Widget? child;
  final ButtonType buttonType;
  final double borderRadius;
  final Color? textColor;
  final Color? borderColor;
  final bool loading;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final borderColor =
        enabled ? CustomColors.primaryColor : Colors.transparent;

    final textColor = this.textColor ??
        (buttonType == ButtonType.outlined ? borderColor : Colors.white);

    final buttonColor = buttonType == ButtonType.outlined
        ? color ??
            CupertinoDynamicColor.resolve(
              CupertinoDynamicColor.withBrightness(
                color: CupertinoColors.systemGrey6,
                darkColor: CupertinoColors.darkBackgroundGray,
              ),
              context,
            )
        : color ??
            CupertinoDynamicColor.resolve(
              CupertinoDynamicColor.withBrightness(
                color: CustomColors.primaryColor,
                darkColor: CustomColors.primaryColor,
              ),
              context,
            );
    Timer? _debounce;
    return CupertinoButton(
      // minSize: 100,
      padding: width == null ? EdgeInsets.only(left: 10, right: 10) : null,
      onPressed: !loading && enabled
          ? () => {
                if (_debounce?.isActive == true) {_debounce?.cancel()},
                _debounce = Timer(Duration(milliseconds: 200), () {
                  onTap();
                })
              }
          : null,
      disabledColor: Colors.grey.shade50,
      color: buttonColor,
      child: loading
          ? CupertinoActivityIndicator(
              color: CustomColors.primaryColor,
            )
          : Text(
              text,
              style: textStyle!.copyWith(color: textColor),
              textAlign: TextAlign.center,
            ),
    );
  }
}
