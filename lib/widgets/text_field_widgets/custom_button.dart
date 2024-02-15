import 'package:dashboard/extension/context_extension.dart';
import 'package:dashboard/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final bool isOutLine;
  const CustomButton({super.key, required this.isOutLine});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: isOutLine?BorderSide(
              color: context.colorScheme.primary
            ):BorderSide.none
          ),
          elevation: 0,
          backgroundColor:isOutLine?Colors.transparent:context.colorScheme.primary,
        ),
        onPressed: () {},
        child: Text(
          'Send Money',
          style: AppStyles.styleSemiBold18(context).copyWith(
            color:context.colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
