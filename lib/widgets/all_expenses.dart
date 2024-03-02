import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenes_header.dart';
import 'package:responsive_dash_board/widgets/expensen_item_row.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child:  Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          ExpensesItemRow()
        ],
      ),
    );
  }
}

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.paddingValue,
  });
  final Widget child;
  final double? paddingValue;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:  EdgeInsets.all(paddingValue??20),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: child);
  }
}
