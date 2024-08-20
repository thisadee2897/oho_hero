import 'package:flutter/cupertino.dart';

import '../config/routes/export.dart';

class CustomTextFormfield extends StatelessWidget {
  const CustomTextFormfield({
    super.key,
    required this.title,
    required this.controller,
    this.require = false,
    this.validator,
    this.obscureText = false,
    this.textAlign = TextAlign.left,
    this.readOnly = false,
  });
  final String title;
  final TextEditingController controller;
  final bool require;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextAlign textAlign;
  final readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (require)
              Text("*", style: TextStyle(color: CupertinoColors.systemRed)),
            Text(
              "$title",
              style: TextStyle(
                color: readOnly
                    ? CupertinoColors.systemGrey3
                    : CupertinoDynamicColor.resolve(
                        CupertinoDynamicColor.withBrightness(
                          color: CupertinoColors.systemGrey,
                          darkColor: CupertinoColors.systemGrey3,
                        ),
                        context,
                      ),
              ),
            ),
          ],
        ),
        CupertinoTextFormFieldRow(
          readOnly: readOnly,
          strutStyle: StrutStyle(
            forceStrutHeight: true,
            height: 2,
            fontSize: 16,
          ),
          placeholderStyle: TextStyle(
              color: readOnly
                  ? CupertinoColors.systemGrey6
                  : CupertinoColors.systemGrey4),
          textAlign: textAlign,
          textAlignVertical: TextAlignVertical.center,
          controller: controller,
          cursorColor: CustomColors.primaryColor,
          style: TextStyle(
            fontSize: 16,
            color: CupertinoDynamicColor.resolve(
              CupertinoDynamicColor.withBrightness(
                color: CupertinoColors.darkBackgroundGray,
                darkColor: CupertinoColors.systemGrey6,
              ),
              context,
            ),
          ),
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: readOnly
                ? CupertinoColors.systemGrey6
                : CupertinoDynamicColor.resolve(
                    CupertinoDynamicColor.withBrightness(
                      color: CupertinoColors.systemGrey6,
                      darkColor: CupertinoColors.darkBackgroundGray,
                    ),
                    context,
                  ),
          ),
          autovalidateMode: AutovalidateMode.always,
          validator: validator,
          placeholder: title,
          obscureText: obscureText,
        ),
      ],
    );
  }
}
