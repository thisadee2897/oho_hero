import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_colors.dart';

class CustomThemes {
  static InputDecoration inputDecoration(
      {required String? label,
      bool req = false,
      Widget? suffix,
      bool read = false}) {
    return InputDecoration(
      focusColor: Colors.transparent,
      prefixIconColor: Colors.transparent,
      hoverColor: Colors.transparent,
      iconColor: Colors.transparent,
      suffixIconColor: Colors.transparent,
      suffix: suffix,
      hintText: label,
      filled: true,
      fillColor: read ? null : CupertinoColors.tertiarySystemFill,
      focusedBorder: read
          ? const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(9)),
              borderSide: BorderSide(color: Colors.transparent),
            )
          : OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(9)),
              borderSide: BorderSide(color: Colors.transparent),
            ),
      enabledBorder: read
          ? const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(9)),
              borderSide: BorderSide(color: Colors.transparent),
            )
          : OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(9)),
              borderSide: BorderSide(color: Colors.transparent),
            ),
      errorBorder: read
          ? null
          : OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(9)),
              borderSide: BorderSide(color: Colors.transparent),
            ),
      border: read
          ? const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: Colors.transparent),
            )
          : OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(9)),
              borderSide: BorderSide(color: Colors.transparent),
            ),
    );
  }

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
