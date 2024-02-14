import 'package:dashboard/widgets/card_widgets/my_cards_section.dart';
import 'package:dashboard/widgets/custom_background_container.dart';
import 'package:dashboard/widgets/transaction_widgets/transaction_history.dart';
import 'package:flutter/material.dart';
class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
