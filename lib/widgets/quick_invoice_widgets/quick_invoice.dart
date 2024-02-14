import 'package:dashboard/widgets/custom_background_container.dart';
import 'package:dashboard/widgets/quick_invoice_widgets/latest_transaction_widgets/latest_transaction.dart';
import 'package:dashboard/widgets/quick_invoice_widgets/quick_invoice_form.dart';
import 'package:dashboard/widgets/quick_invoice_widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';
class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
