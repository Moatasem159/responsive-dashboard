part of'transaction_history.dart';
class _TransactionHistoryHeader extends StatelessWidget {
  const _TransactionHistoryHeader();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: AppStyles.styleMedium16(context),
        )
      ],
    );
  }
}