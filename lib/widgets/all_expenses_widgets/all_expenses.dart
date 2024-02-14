import 'package:dashboard/widgets/all_expenses_widgets/all_expenses_header/all_expenses_header.dart';
import 'package:dashboard/widgets/all_expenses_widgets/all_expenses_items_list_view.dart';
import 'package:dashboard/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';
class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemsListView()
        ],
      ),
    );
  }
}