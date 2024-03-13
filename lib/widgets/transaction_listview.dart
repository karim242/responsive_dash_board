import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';
import 'package:responsive_dash_board/widgets/transaction_list_tile.dart';

class TranscationListview extends StatelessWidget {
  const TranscationListview({super.key});

  final List<TransactionItem> transactions = const [
    TransactionItem(
        withderawel: true,
        title: "Cash Withdrawal",
        subtitle: "13 Apr, 2022 at 3:30 PM",
        trailing: r"$20,129"),
    TransactionItem(
        withderawel: false,
        title: "Landing Page project",
        subtitle: "13 Apr, 2022 at 3:30 PM",
        trailing: r"$210,129"),
    TransactionItem(
        withderawel: false,
        title: "Juni Mobile App project",
        subtitle: "13 Apr, 2022 at 3:30 PM",
        trailing: r"$320,129"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: transactions.length,
      itemBuilder: (BuildContext context, int index) {
        return TransactionlistTile(item: transactions[index]);
      },
    );
  }
}
