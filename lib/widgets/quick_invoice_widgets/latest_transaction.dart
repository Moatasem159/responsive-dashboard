part of'quick_invoice.dart';
class _LatestTransaction extends StatelessWidget {
  const _LatestTransaction();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const _LatestTransactionListView()
      ],
    );
  }
}
