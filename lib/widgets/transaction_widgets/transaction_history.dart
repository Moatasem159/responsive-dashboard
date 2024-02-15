import 'package:dashboard/models/transaction_model.dart';
import 'package:dashboard/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
part 'transaction_history_header.dart';
part 'transaction_item.dart';
part 'transaction_history_list_view.dart';
class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TransactionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: TextStyle(
            color: Color(0xFFAAAAAA),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        _TransactionHistoryListView(),
      ],
    );
  }
}