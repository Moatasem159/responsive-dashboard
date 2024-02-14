import 'package:dashboard/extension/context_extension.dart';
import 'package:dashboard/models/all_expenses_item_model.dart';
import 'package:dashboard/utils/app_text_styles.dart';
import 'package:dashboard/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
part 'active_and_inactive_all_expenses_item.dart';
part 'all_expenses_item_header.dart';
class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  const AllExpensesItem({super.key, required this.itemModel, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? _ActiveAllExpensesItem(itemModel,isSelected)
        : _InActiveAllExpensesItem(itemModel,isSelected);
  }
}