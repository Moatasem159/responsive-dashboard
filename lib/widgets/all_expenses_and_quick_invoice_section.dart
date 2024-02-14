import 'package:dashboard/widgets/all_expenses_widgets/all_expenses.dart';
import 'package:dashboard/widgets/quick_invoice_widgets/quick_invoice.dart';
import 'package:flutter/material.dart';
class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}