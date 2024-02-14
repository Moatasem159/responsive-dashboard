import 'package:flutter/material.dart';
import 'package:dashboard/extension/context_extension.dart';
class SizeConfig {
  static const double desktop = 1200;
  static const double tablet = 800;
  static late double width, height;
  static init(BuildContext context) {
    height = context.height;
    width = context.width;
  }
}