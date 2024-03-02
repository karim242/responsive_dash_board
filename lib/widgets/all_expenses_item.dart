import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/active_inactive_expenese_items.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.item, required this.isSelected});
  final AllExpensesItemModel item;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveExpensesItem(item: item)
        : InActiveExpensesItem(item: item);
  }
}
