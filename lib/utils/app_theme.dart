import 'package:dashboard/utils/app_colors.dart';
import 'package:flutter/material.dart';
abstract class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      background: AppColors.mainLightBackgroundColor,
      onBackground: AppColors.mainLightColor
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      background: AppColors.mainDarkBackgroundColor,
      onBackground: AppColors.mainDarkColor
    ),
  );
}