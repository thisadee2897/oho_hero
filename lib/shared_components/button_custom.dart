import 'dart:async';

import 'package:flutter/material.dart';

import '../config/constants/constants.dart';
import '../config/themes/themes.dart';
import 'loading.dart';

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
    this.buttonType = ButtonType.filled, // new parameter for button type
    this.borderRadius = 90,
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
        enabled ? Theme.of(context).primaryColor : Colors.transparent;

    final textColor = this.textColor ??
        (buttonType == ButtonType.outlined ? borderColor : Colors.white);

    final buttonColor = buttonType == ButtonType.outlined
        ? color ?? Colors.white
        : color ?? CustomColors.primaryColor;

    final borderSide =
        BorderSide(color: enabled ? borderColor : Colors.grey, width: 1);

    final buttonShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      side: borderSide,
    );
    Timer? _debounce;
    return SizedBox(
      width: width,
      height: height,
      child: MaterialButton(
        elevation: elevation,
        onPressed: !loading && enabled
            ? () => {
                  if (_debounce?.isActive == true) {_debounce?.cancel()},
                  _debounce = Timer(Duration(milliseconds: 200), () {
                    onTap();
                  })
                }
            : null,
        disabledColor: Colors.white,
        color: buttonColor,
        shape: buttonShape,
        child: loading
            ? Loading()
            : child ??
                Text(
                  text,
                  style: textStyle!.copyWith(color: textColor),
                  textAlign: TextAlign.center,
                ),
      ),
    );
  }
}
