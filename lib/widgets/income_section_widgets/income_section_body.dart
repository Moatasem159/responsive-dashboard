import 'package:dashboard/extension/context_extension.dart';
import 'package:dashboard/utils/size_config.dart';
import 'package:dashboard/widgets/income_section_widgets/detailed_income_chart.dart';
import 'package:dashboard/widgets/income_section_widgets/income_chart.dart';
import 'package:dashboard/widgets/income_section_widgets/income_details.dart';
import 'package:flutter/material.dart';
class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});
  @override
  Widget build(BuildContext context) {
    return context.width >= SizeConfig.desktop && context.width  < 1750
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(),
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
