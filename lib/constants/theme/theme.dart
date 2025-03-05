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
      dividerColor: AppColors.lightmodeTextColor);

  //darkmode
  static final ThemeData darkmode = ThemeData();
}
