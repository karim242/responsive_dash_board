import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/all_card_section.dart';
import 'package:responsive_dash_board/widgets/all_expenses_quickinvoice.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DashboardDesketopLayout extends StatelessWidget {
  const DashboardDesketopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 24,
        ),
       Expanded(
        flex: 5,
         child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
            child:   Row(
          children: [
             Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: AllExpensesAndQuiclInvoice(),
              )),
          SizedBox(
            width: 24,
          ),
          Expanded(flex: 2, child: AllCardSection())
          ],
         ),
            )
          ],
         )
       )
      ],
    );
  }
}
