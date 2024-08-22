import '../config/routes/export.dart';

enum FormType { search, filled }

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
    this.disable = false,
  });
  final String title;
  final TextEditingController controller;
  final bool require;
  final String? Function(String?)? validator;
  final bool obscureText;
  final bool disable;
  final TextAlign textAlign;
  final readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            if (require)
              Text("*", style: TextStyle(color: CupertinoColors.systemRed)),
            Text(
              "$title",
              style: TextStyle(
                fontSize: 14,
                color: readOnly
                    ? CupertinoColors.systemGrey3
                    : CupertinoDynamicColor.resolve(
                        CupertinoDynamicColor.withBrightness(
                          color: CupertinoColors.darkBackgroundGray,
                          darkColor:
                              CupertinoColors.systemGrey3.highContrastColor,
                        ),
                        context,
                      ),
              ),
            ),
          ],
        ),
        if (disable)
          CupertinoTextField(
            enabled: !disable,
            readOnly: readOnly,
            placeholderStyle: placeholderStyleCustom(context),
            textAlign: textAlign,
            textAlignVertical: TextAlignVertical.center,
            controller: controller,
            cursorColor: CustomColors.primaryColor,
            style: styleCustom(context),
            // padding: paddingCustom(),
            decoration: decorationCustom(context),
            placeholder: title,
            obscureText: obscureText,

          )
        else
          CupertinoTextFormFieldRow(
            readOnly: readOnly,
            placeholderStyle: placeholderStyleCustom(context),
            textAlign: textAlign,
            textAlignVertical: TextAlignVertical.center,
            controller: controller,
            cursorColor: CustomColors.primaryColor,
            style: styleCustom(context),
            padding: paddingCustom(),
            decoration: decorationCustom(context),
            autovalidateMode: AutovalidateMode.always,
            validator: validator,
            placeholder: title,
            obscureText: obscureText,
          ),
      ],
    );
  }

  TextStyle placeholderStyleCustom(BuildContext context) {
    return TextStyle(
      color: readOnly
          ? CupertinoColors.systemGrey6
          : CupertinoColors.systemGrey,
    );
  }

  TextStyle styleCustom(BuildContext context) {
    return TextStyle(
      fontSize: 16,
      color: CupertinoDynamicColor.resolve(
        CupertinoDynamicColor.withBrightness(
          color: CupertinoColors.darkBackgroundGray,
          darkColor: CupertinoColors.systemGrey6,
        ),
        context,
      ),
    );
  }

  BoxDecoration decorationCustom(BuildContext context) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(9.0),
      color: readOnly
          ? CupertinoTheme.of(context).barBackgroundColor
          : CupertinoColors.tertiarySystemFill,
    );
  }

  EdgeInsets paddingCustom() => EdgeInsets.all(0);
}
