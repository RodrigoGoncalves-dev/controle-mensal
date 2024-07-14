import 'package:flutter/material.dart';
import 'package:na_regua_package/na_regua_package.dart';

class ThemeCustom {
  ThemeCustom._();
  static final lightTheme = ThemeData(
    fontFamily: "Roboto",
    useMaterial3: true,
    scaffoldBackgroundColor: NaReguaColors.light.surface,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: NaReguaColors.light.primaryColor,
      selectionColor: NaReguaColors.light.primaryColor.withOpacity(0.5),
      selectionHandleColor: NaReguaColors.light.primaryColor,
    ),
    appBarTheme: AppBarTheme(backgroundColor: NaReguaColors.neutral_.get50, surfaceTintColor: NaReguaColors.neutral_.get50),
    textTheme: text,
    dialogTheme: DialogTheme(
      backgroundColor: NaReguaColors.light.primaryBG,
      surfaceTintColor: NaReguaColors.light.primaryBG,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    brightness: Brightness.light,
    extensions: [NaReguaColors.light],
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      background: NaReguaColors.light.surface, //primaryBackGround
      onBackground: NaReguaColors.light.secondaryText,
      surface: NaReguaColors.light.primaryBG, // secondary Backgorund
      onSurface: NaReguaColors.light.primaryText,
      primary: NaReguaColors.light.primaryColor,
      onPrimary: NaReguaColors.light.primaryText,
      secondary: NaReguaColors.light.primaryColor,
      onSecondary: NaReguaColors.light.primaryText,
      error: NaReguaColors.light.errorColor,
      onError: NaReguaColors.light.primaryBG,
    ),
  );

  static final darkTheme = ThemeData(
    fontFamily: "Roboto",
    useMaterial3: true,
    scaffoldBackgroundColor: NaReguaColors.dark.surface,
    textTheme: text,
    brightness: Brightness.dark,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: NaReguaColors.light.primaryColor,
      selectionColor: NaReguaColors.light.primaryColor.withOpacity(0.5),
      selectionHandleColor: NaReguaColors.light.primaryColor,
    ),
    appBarTheme: AppBarTheme(backgroundColor: NaReguaColors.neutral_.get950, surfaceTintColor: NaReguaColors.neutral_.get950),
    dialogTheme: DialogTheme(
      backgroundColor: NaReguaColors.dark.primaryBG,
      surfaceTintColor: NaReguaColors.dark.primaryBG,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    extensions: [NaReguaColors.dark],
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      background: NaReguaColors.dark.surface, //primaryBackGround
      onBackground: NaReguaColors.dark.secondaryText,
      surface: NaReguaColors.dark.primaryBG, // secondary Backgorund
      onSurface: NaReguaColors.dark.primaryText,
      primary: NaReguaColors.dark.primaryColor,
      onPrimary: NaReguaColors.dark.primaryText,
      secondary: NaReguaColors.dark.primaryColor,
      onSecondary: NaReguaColors.dark.primaryText,
      error: NaReguaColors.dark.errorColor,
      onError: NaReguaColors.dark.primaryText,
    ),
  );

  static const text = TextTheme(
    displayLarge: TextStyle(letterSpacing: 0),
    displayMedium: TextStyle(letterSpacing: 0),
    displaySmall: TextStyle(letterSpacing: 0),
    //
    headlineLarge: TextStyle(letterSpacing: 0),
    headlineMedium: TextStyle(letterSpacing: 0),
    headlineSmall: TextStyle(letterSpacing: 0),
    //
    titleLarge: TextStyle(letterSpacing: 0, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(letterSpacing: 0, fontWeight: FontWeight.w500),
    titleSmall: TextStyle(letterSpacing: 0.5, fontWeight: FontWeight.w400),
    //
    labelLarge: TextStyle(fontSize: 16, letterSpacing: 0.5, fontWeight: FontWeight.w600),
    labelMedium: TextStyle(fontSize: 14, letterSpacing: 0.5, fontWeight: FontWeight.w500),
    labelSmall: TextStyle(fontSize: 13, letterSpacing: 0.5, fontWeight: FontWeight.w400),
    //
    bodyLarge: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 0),
    bodyMedium: TextStyle(letterSpacing: 0, fontWeight: FontWeight.w500),
    bodySmall: TextStyle(letterSpacing: 0, fontWeight: FontWeight.w400),
  );
}
