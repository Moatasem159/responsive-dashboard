import 'package:dashboard/extension/context_extension.dart';
import 'package:dashboard/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Icon(Icons.add,color: context.colorScheme.secondary,)
      ],
    );
  }
}
