import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_card_item.dart';
import 'package:responsive_dash_board/widgets/custom_background_countainer.dart';
import 'package:responsive_dash_board/widgets/transaction_history.dart';

class AllCard extends StatelessWidget {
  const AllCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            AllCardItem(),
            TransactionHistory(),
          ],
        ),
      ),
    );
  }
}
