import 'package:dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';
abstract class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryLightColor,
      secondary: AppColors.secondaryLightColor,
      onBackground: AppColors.mainLightColor,
      background: AppColors.mainLightBackgroundColor,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: AppColors.mainLightBackgroundColor,
      iconTheme: IconThemeData(
        color: AppColors.primaryLightColor,
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryDarkColor,
      secondary: AppColors.secondaryDarkColor,
      background: AppColors.mainDarkBackgroundColor,
      onBackground: AppColors.mainDarkColor,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: AppColors.mainDarkBackgroundColor,
      iconTheme: IconThemeData(
        color: AppColors.primaryDarkColor,
      ),
    ),
  );
}
