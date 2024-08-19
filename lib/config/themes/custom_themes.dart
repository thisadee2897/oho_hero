import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_colors.dart';

class CustomThemes {
  static final mainTheme = ThemeData(
    primaryColor: CustomColors.primaryColor,
    // fontFamily: kFontFamily,
    scaffoldBackgroundColor: CustomColors.backgroundColor,
    dialogTheme: DialogTheme(
        backgroundColor: Colors.white,
        elevation:10,
        ),
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
    textTheme: TextTheme(
      headlineMedium: GoogleFonts.openSans(
        textStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.normal,
          color: Colors.black54,
        ),
      ),
      bodyLarge: GoogleFonts.openSans(
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.black54,
        ),
      ),
      bodyMedium: GoogleFonts.openSans(
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.black54,
        ),
      ),
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: CustomColors.primaryColor),
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelAlignment: FloatingLabelAlignment.start,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      alignLabelWithHint: true,
      filled: true,
      focusColor: Colors.grey.shade400,
      suffixIconColor: Colors.grey.shade400,
      fillColor: Colors.grey.shade100,
      contentPadding:
          const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
      labelStyle: const TextStyle(
          fontSize: 16, overflow: TextOverflow.ellipsis, color: Colors.black54),
      hintStyle: const TextStyle(
          fontSize: 16, overflow: TextOverflow.ellipsis, color: Colors.black54),
      helperStyle: const TextStyle(
        fontSize: 16,
        overflow: TextOverflow.ellipsis,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: CustomColors.primaryColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: Colors.grey.shade200),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: CustomColors.primaryColor,
      surface: CustomColors.backgroundColor,
    ),
  );
}
