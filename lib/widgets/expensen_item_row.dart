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
    return Row(children: [
      Expanded(
        child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              item: items[0],
              isSelected: selectedIndex == 0,
            )),
      ),
      const SizedBox(
        width: 12,
      ),
      Expanded(
        child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              item: items[1],
              isSelected: selectedIndex == 1,
            )),
      ),
      const SizedBox(
        width: 12,
      ),
      Expanded(
        child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              item: items[2],
              isSelected: selectedIndex == 2,
            )),
      )
    ]);
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
