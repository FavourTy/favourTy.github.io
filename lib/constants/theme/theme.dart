import 'package:favourty/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //light mode
  static final ThemeData lightMode = ThemeData(
      useMaterial3: true,
      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.lightModeBackgroundColor,
          elevation: 0,
          scrolledUnderElevation: 0),
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.lightModeBackgroundColor,
      cardColor: AppColors.lightModeBackgroundColor,
      iconTheme: IconThemeData(
        color: AppColors.lightmodeTextColor,
      ),
      dividerColor: AppColors.lightModeToolsColor,
      drawerTheme:
          DrawerThemeData(backgroundColor: AppColors.lightModeBackgroundColor),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
            fontFamily: "Rubik Moonrocks",
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.lightmodeTextColor),
        headlineSmall: TextStyle(
            fontFamily: "Rubik",
            fontSize: 18.5,
            color: AppColors.lightmodeTextColor,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.lightModeToolsColor,
            decorationThickness: 2.0,
            fontWeight: FontWeight.w400),
        headlineMedium: TextStyle(
            fontSize: 33,
            fontFamily: "Rubik",
            fontWeight: FontWeight.w500,
            color: AppColors.lightModeToolsColor),
        bodyMedium: TextStyle(
            fontFamily: "Lobster",
            fontSize: 32,
            fontWeight: FontWeight.w400,
            color: AppColors.lightmodeTextColor),
        titleLarge: TextStyle(
            fontFamily: "Rubik",
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: AppColors.lightmodeTextColor),
        bodyLarge: TextStyle(
            fontFamily: "Lobster",
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.lightmodeTextColor),
        bodySmall: TextStyle(
            fontFamily: "Tangerine",
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.lightmodeTextColor),
      ));

  //darkmode
  static final ThemeData darkmode = ThemeData(
    appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkModeBackgroundColor,
        elevation: 0,
        scrolledUnderElevation: 0),
    scaffoldBackgroundColor: AppColors.darkModeBackgroundColor,
    dividerColor: AppColors.darkmodeToolsColor,
    cardColor: AppColors.lightmodeTextColor,
    drawerTheme:
        DrawerThemeData(backgroundColor: AppColors.darkModeBackgroundColor),
    iconTheme: IconThemeData(
      color: AppColors.darkmodeTextColor,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
          fontFamily: "Lobster",
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: AppColors.darkmodeTextColor),
      headlineLarge: TextStyle(
          fontFamily: "Rubik Moonrocks",
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.darkmodeTextColor),
      headlineMedium: TextStyle(
          fontSize: 33,
          fontFamily: "Rubik",
          fontWeight: FontWeight.w500,
          color: AppColors.darkmodeToolsColor),
      headlineSmall: TextStyle(
          fontFamily: "Rubik",
          fontSize: 18.5,
          color: AppColors.darkmodeTextColor,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.darkmodeToolsColor,
          decorationThickness: 2.0),
      titleLarge: TextStyle(
          fontFamily: "Rubik",
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: AppColors.darkmodeTextColor),
      bodyLarge: TextStyle(
          fontFamily: "Lobster",
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: AppColors.darkmodeTextColor),
    ),
  );
}
