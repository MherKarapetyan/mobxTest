import 'package:flutter/material.dart';

/// This class contains all app themes.
/// All app/text specific colors should be defined here.
/// Text widgets should get the themes from this class.
class AppThemes {
  static const double OPACITY_LOW = 0.35;
  static const double OPACITY_MIDDLE = 0.5;
  static const double OPACITY_HIGH = 0.9;

  static const Color white = Color(0xffffffff);
  static const Color darkBlue = Color.fromRGBO(12, 29, 48, 1);
  static const Color darkPurple = Color.fromRGBO(30, 34, 52, 1);
  static const Color red = Color.fromRGBO(220, 102, 92, 1);
  static const Color black = Color(0xff030104);
  static const Color grey = Colors.grey;

  // App default theme
  static get defaultTheme {
    return ThemeData(
      primaryColorBrightness: Brightness.light,
      scaffoldBackgroundColor: darkBlue,
      disabledColor: grey,
      primaryColor: darkBlue,
      secondaryHeaderColor: red,
      accentColor: darkPurple,
      backgroundColor: white,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(brightness: Brightness.dark),
    );
  }

  static const FontWeight FONTWEIGHT_THIN = FontWeight.w100;
  static const FontWeight FONTWEIGHT_EXTRA_LIGHT = FontWeight.w200;
  static const FontWeight FONTWEIGHT_LIGHT = FontWeight.w300;
  static const FontWeight FONTWEIGHT_REGULAR = FontWeight.w400;
  static const FontWeight FONTWEIGHT_MEDIUM = FontWeight.w500;
  static const FontWeight FONTWEIGHT_SEMI_BOLD = FontWeight.w600;
  static const FontWeight FONTWEIGHT_BOLD = FontWeight.w700;
  static const FontWeight FONTWEIGHT_EXTRA_BOLD = FontWeight.w800;
  static const FontWeight FONTWEIGHT_BLACK = FontWeight.w900;
}
