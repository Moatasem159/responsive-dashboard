import 'package:dashboard/extension/context_extension.dart';
import 'package:dashboard/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: context.colorScheme.onBackground,
        shape: RoundedRectangleBorder(
          side:BorderSide(width:0.5, color: context.colorScheme.secondary),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: -1.57079633,
            child:  Icon(
              Icons.arrow_back_ios_new_outlined,
              color: context.colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}