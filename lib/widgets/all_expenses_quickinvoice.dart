import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class AllExpensesAndQuiclInvoice extends StatelessWidget {
  const AllExpensesAndQuiclInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        
        AllExpenses(),
        SizedBox(
          height: 22,
        ),
        QuickInvoice()
      ],
    );
  }
}
