import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class ExpensesItemRow extends StatefulWidget {
  const ExpensesItemRow({
    super.key,
  });

  @override
  State<ExpensesItemRow> createState() => _ExpensesItemRowState();
}

class _ExpensesItemRowState extends State<ExpensesItemRow> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: "Balance",
        date: "April 2022",
        price: "\$20.129"),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: "Income",
        date: "April 2022",
        price: "\$20.129"),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: "Expenses",
        date: "April 2022",
        price: "\$20.129"),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map((e) {
      var index = e.key;
      var item = e.value;
      return index == 1
          ? Expanded(
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GestureDetector(
                  onTap: () {
                    updateIndex(index);
                  },
                  child: AllExpensesItem(
                    item: item,
                    isSelected: selectedIndex == index,
                  )),
            ))
          : Expanded(
              child: GestureDetector(
                  onTap: () {
                    updateIndex(index);
                  },
                  child: AllExpensesItem(
                    item: item,
                    isSelected: selectedIndex == index,
                  )));
    }).toList());
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
