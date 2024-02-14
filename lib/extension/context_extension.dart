import 'package:flutter/material.dart';
extension ContextExtension on BuildContext{
  get height =>MediaQuery.sizeOf(this).height;
  get width =>MediaQuery.sizeOf(this).width;
  get theme=> Theme.of(this);
}