import 'package:flutter/material.dart';
extension SizeExtension on BuildContext{
  double get height =>MediaQuery.sizeOf(this).height;
  double get width =>MediaQuery.sizeOf(this).width;
}
extension ThemeExtension on BuildContext{
  ThemeData get theme=> Theme.of(this);
  ColorScheme get colorScheme=> Theme.of(this).colorScheme;
}