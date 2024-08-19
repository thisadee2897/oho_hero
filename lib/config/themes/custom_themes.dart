import 'package:flutter/material.dart';

import 'custom_colors.dart';

class CustomThemes {
  static final mainTheme = ThemeData(
    primaryColor: CustomColors.primaryColor,
    ///TODO: add FontFamily
    // fontFamily: kFontFamily,
    scaffoldBackgroundColor: CustomColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      titleSpacing: 0,
      titleTextStyle: TextStyle(
        fontSize: 20,
        // fontFamily: kFontFamily,
      ),
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: CustomColors.primaryColor),
    inputDecorationTheme: const InputDecorationTheme(
      focusColor: CustomColors.primaryColor,
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: CustomColors.primaryColor),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: CustomColors.primaryColor,
        surface: CustomColors.backgroundColor),
  );
}
