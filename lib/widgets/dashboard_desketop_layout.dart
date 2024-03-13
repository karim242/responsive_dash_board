import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_card_section.dart';
import 'package:responsive_dash_board/widgets/all_expenses_quickinvoice.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DesketopLayout extends StatelessWidget {
  const DesketopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 24,
        ),
        Expanded(flex: 2, child: AllExpensesAndQuiclInvoice()),
        SizedBox(
          width: 24,
        ),
        Expanded(child: AllCardSection())
      ],
    );
  }
}
