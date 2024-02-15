import 'package:dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:dashboard/widgets/income_section_widgets/income_section.dart';
import 'package:dashboard/widgets/my_cards_and_transaction_history_section.dart';
import 'package:flutter/material.dart';
class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            AllExpensesAndQuickInvoiceSection(),
            SizedBox(
              height: 24,
            ),
            MyCardsAndTransactionHistorySection(),
            SizedBox(
              height: 24,
            ),
            IncomeSection(),
          ],
        ),
      ),
    );
  }
}
