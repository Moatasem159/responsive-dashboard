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
  );
  static final ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryDarkColor,
      secondary: AppColors.secondaryDarkColor,
      background: AppColors.mainDarkBackgroundColor,
      onBackground: AppColors.mainDarkColor
    ),

  );
}