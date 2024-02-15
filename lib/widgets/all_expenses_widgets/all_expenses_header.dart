part of'all_expenses.dart';
class _AllExpensesHeader extends StatelessWidget {
  const _AllExpensesHeader();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const RangeOptions(),
      ],
    );
  }
}
