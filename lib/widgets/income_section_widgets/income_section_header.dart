import 'package:dashboard/utils/app_text_styles.dart';
import 'package:dashboard/widgets/range_options.dart';
import 'package:flutter/material.dart';
class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
       const RangeOptions()
      ],
    );
  }
}