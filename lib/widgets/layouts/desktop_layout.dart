import 'package:dashboard/widgets/all_expenses_widgets/all_expenses.dart';
import 'package:dashboard/widgets/custom_drawer_widgets/custom_drawer.dart';
import 'package:dashboard/widgets/quick_invoice_widgets/quick_invoice.dart';
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
          flex: 2,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              AllExpenses(),
              SizedBox(
                height: 24,
              ),
              QuickInvoice()
            ],
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
