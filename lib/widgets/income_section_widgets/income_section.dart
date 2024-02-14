import 'package:dashboard/widgets/custom_background_container.dart';
import 'package:dashboard/widgets/income_section_widgets/income_section_body.dart';
import 'package:dashboard/widgets/income_section_widgets/income_section_header.dart';
import 'package:flutter/material.dart';
class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
