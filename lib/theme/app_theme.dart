import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/color_palette.dart';

class AppTheme {
  static ThemeData theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: ColorPalette.kBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorPalette.kBackgroundColor,
      elevation: 0,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorPalette.kBlueColor,
    ),
  );
}
