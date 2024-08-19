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
  });
  final String title;
  final TextEditingController controller;
  final bool require;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (require)
              Text("*", style: TextStyle(color: Colors.red.shade900)),
            Text(
              "$title",
              style: CustomTextStyles.content1,
            ),
          ],
        ),
        CupertinoTextFormFieldRow(
          strutStyle: StrutStyle(
            forceStrutHeight: true,
            height: 2,
            fontSize: 16,
          ),
          placeholderStyle: TextStyle(color: CupertinoColors.systemGrey),
          textAlign: textAlign,
          textAlignVertical: TextAlignVertical.center,
          controller: controller,
          cursorColor: CustomColors.primaryColor,
          style: TextStyle(fontSize: 16, color: CupertinoColors.black),
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade200,
          ),
          autovalidateMode: AutovalidateMode.disabled,
          validator: validator,
          placeholder: title,
          obscureText: obscureText,
        ),
      ],
    );
  }
}
