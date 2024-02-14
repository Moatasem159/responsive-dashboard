import 'package:dashboard/extension/context_extension.dart';
import 'package:dashboard/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
part 'range_options.dart';
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
        const _RangeOptions(),
      ],
    );
  }
}
