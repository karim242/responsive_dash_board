

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_card.dart';
import 'package:responsive_dash_board/widgets/all_expenses_quickinvoice.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuiclInvoice(),
          SizedBox(height: 24),
          AllCard(),
           SizedBox(height: 24),
           IncomeSection(),
        ],
      ),
    );
  }
}
