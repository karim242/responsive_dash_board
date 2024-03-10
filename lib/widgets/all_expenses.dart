import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenes_header.dart';
import 'package:responsive_dash_board/widgets/custom_background_countainer.dart';
import 'package:responsive_dash_board/widgets/expensen_item_row.dart';
import 'package:responsive_dash_board/widgets/range_option.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child:  Column(
        children: [
          AllExpensesHeader(title: 'All Expenses', rangeOption: RangeOpition(),),
          SizedBox(
            height: 16,
          ),
          ExpensesItemRow()
        ],
      ),
    );
  }
}