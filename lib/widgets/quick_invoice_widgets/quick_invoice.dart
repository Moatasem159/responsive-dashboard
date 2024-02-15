import 'package:dashboard/extension/context_extension.dart';
import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/utils/app_text_styles.dart';
import 'package:dashboard/widgets/custom_background_container.dart';
import 'package:dashboard/widgets/text_field_widgets/custom_button.dart';
import 'package:dashboard/widgets/text_field_widgets/title_text_field.dart';
import 'package:dashboard/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';
part 'quick_invoice_header.dart';
part 'latest_transaction.dart';
part 'quick_invoice_form.dart';
part 'latest_transaction_list_view.dart';
class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          _LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          _QuickInvoiceForm(),
        ],
      ),
    );
  }
}
