import 'package:flutter/material.dart';
import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/models/all_expenses_item_model.dart';
import 'package:dashboard/widgets/all_expenses_widgets/all_expenses_item_widgets/all_expenses_item.dart';
class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});
  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}
class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel>items = [
    const AllExpensesItemModel(
        image: Assets.balance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: Assets.income,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: Assets.expenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedIndex = 0;
  void updateIndex(int index) {
    if(selectedIndex!=index) {
      setState(() {
        selectedIndex = index;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () =>updateIndex(0),
            child: AllExpensesItem(
              isSelected: selectedIndex == 0,
              itemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(1),
            child: AllExpensesItem(
              isSelected: selectedIndex == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: ()=>updateIndex(2),
            child: AllExpensesItem(
              isSelected: selectedIndex == 2,
              itemModel: items[2],
            ),
          ),
        )
      ],
    );
  }
}