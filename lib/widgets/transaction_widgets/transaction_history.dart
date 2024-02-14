import 'package:dashboard/widgets/transaction_widgets/transaction_history_header.dart';
import 'package:dashboard/widgets/transaction_widgets/transaction_history_list_view.dart';
import 'package:flutter/material.dart';
class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
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
        TransactionHistoryListView(),
      ],
    );
  }
}