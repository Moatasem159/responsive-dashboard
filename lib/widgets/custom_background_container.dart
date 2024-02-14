import 'package:flutter/material.dart';
import 'package:dashboard/extension/context_extension.dart';
class CustomBackgroundContainer extends StatelessWidget {
  final Widget child;
  final double? padding;
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.padding,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
      decoration: ShapeDecoration(
        color: context.colorScheme.onBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: child,
    );
  }
}
