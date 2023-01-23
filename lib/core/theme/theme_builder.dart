import 'package:alias/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ThemeBuilder {
  static ThemeData buildLightTheme() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.white,
      brightness: Brightness.light,
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 24,
          color: AppColors.black,
          fontWeight: FontWeight.normal,
        ),
        headline2: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
          color: AppColors.black,
          fontWeight: FontWeight.normal,
        ),
        headline3: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 18,
          color: AppColors.black,
          fontWeight: FontWeight.normal,
        ),
        headline4: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          color: AppColors.black,
          fontWeight: FontWeight.normal,
        ),
        subtitle1: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 13,
          color: AppColors.black,
          fontWeight: FontWeight.normal,
        ),
        button: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 20,
          color: AppColors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
      scaffoldBackgroundColor: AppColors.appBackgroundLight,
      elevatedButtonTheme: _getElevatedButtonTheme(),
      iconTheme: const IconThemeData(color: AppColors.black),
    );
  }

  static ThemeData buildDarkTheme() {
    return ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 24,
            color: AppColors.white,
            fontWeight: FontWeight.normal,
          ),
          headline2: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 20,
            color: AppColors.white,
            fontWeight: FontWeight.normal,
          ),
          headline3: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 18,
            color: AppColors.white,
            fontWeight: FontWeight.normal,
          ),
          headline4: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            color: AppColors.white,
            fontWeight: FontWeight.normal,
          ),
          subtitle1: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 13,
            color: AppColors.white,
            fontWeight: FontWeight.normal,
          ),
          button: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            color: AppColors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        scaffoldBackgroundColor: AppColors.appBackgroundDark,
        elevatedButtonTheme: _getElevatedButtonTheme(),
        iconTheme: const IconThemeData(color: AppColors.white));
  }

  static ElevatedButtonThemeData _getElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: _buttonStyle(color: AppColors.buttonColor),
    );
  }

  static BorderRadius get defaultBorderRadius => BorderRadius.circular(16);

  static ButtonStyle get blueButtonStyle =>
      _buttonStyle(color: AppColors.buttonColor);

  static ButtonStyle get orangeButtonStyle =>
      _buttonStyle(color: AppColors.tretiary);

  static ButtonStyle _buttonStyle({required Color color}) {
    return TextButton.styleFrom(
      minimumSize: const Size(0, 60),
      backgroundColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      foregroundColor: AppColors.white,

      /// This line removes elevatedButton extra height with empty space
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}
