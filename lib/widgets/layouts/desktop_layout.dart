import 'package:dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:dashboard/widgets/custom_drawer_widgets/custom_drawer.dart';
import 'package:dashboard/widgets/income_section_widgets/income_section.dart';
import 'package:dashboard/widgets/my_cards_and_transaction_history_section.dart';
import 'package:flutter/material.dart';
class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpensesAndQuickInvoiceSection(),
                        )
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(child: Padding(
                      padding: EdgeInsets.only(top: 40,right: 24),
                      child: Column(
                        children: [
                          MyCardsAndTransactionHistorySection(),
                          SizedBox(height: 24,),
                          Expanded(child: IncomeSection()),
                          SizedBox(height: 24,),
                        ],
                      ),
                    )),
                  ],
                ),
              )
            ],
          )
        )
      ],
    );
  }
}