import 'package:dashboard/models/all_expenses_item_model.dart';
import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/utils/app_text_styles.dart';
import 'package:dashboard/widgets/all_expenses_widgets/all_expenses_item_widgets/all_expenses_item.dart';
import 'package:dashboard/widgets/custom_background_container.dart';
import 'package:dashboard/widgets/range_options.dart';
import 'package:flutter/material.dart';
part 'all_expenses_header.dart';
part 'all_expenses_items_list_view.dart';
class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          _AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          _AllExpensesItemsListView()
        ],
      ),
    );
  }
}