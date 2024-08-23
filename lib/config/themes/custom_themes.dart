import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_colors.dart';

class CustomThemes {
  static final mainTheme = CupertinoThemeData(
    applyThemeToAll: true,
    primaryColor: CustomColors.primaryColor,
    // brightness: Brightness.light
    // applyThemeToAll: true,
    textTheme: CupertinoTextThemeData(
      textStyle: GoogleFonts.openSans(
        textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: CupertinoColors.label),
      ),
      actionTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: CupertinoColors.label),
      ),
      tabLabelTextStyle: GoogleFonts.openSans(
        textStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.normal,
            color: CupertinoColors.label),
      ),
      navTitleTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.label),
      ),
      navLargeTitleTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.label),
      ),
      navActionTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: CupertinoColors.label),
      ),
      dateTimePickerTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: CupertinoColors.label),
      ),
      pickerTextStyle: GoogleFonts.openSans(
        textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: CupertinoColors.label),
      ),
    ),
  );
}
