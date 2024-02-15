part of'quick_invoice.dart';
class _QuickInvoiceHeader extends StatelessWidget {
  const _QuickInvoiceHeader();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
          decoration:  ShapeDecoration(
            shape: const CircleBorder(),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: Icon(
            Icons.add,
            color: context.colorScheme.secondary,
          ),
        )
      ],
    );
  }
}