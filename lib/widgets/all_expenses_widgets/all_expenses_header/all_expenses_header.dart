import 'package:dashboard/utils/app_text_styles.dart';
import 'package:dashboard/widgets/range_options.dart';
import 'package:flutter/material.dart';
class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const RangeOptions(),
      ],
    );
  }
}
