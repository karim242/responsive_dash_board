import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expense_item_header.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({
    super.key,
    required this.item,
  });

  final AllExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
        borderRadius: BorderRadius.circular(12),
      )),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        AllExpensesItemHeader(
          image: item.image,
        ),
        const SizedBox(
          height: 34,
        ),
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.title,
              style: AppStyles.styleSemiBold16(context),
            )),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.date,
              style: AppStyles.styleRegular14(context),
            )),
        const SizedBox(
          height: 16,
        ),
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.price,
              style: AppStyles.styleSemiBold24(context),
            )),
      ]),
    );
  }
}

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({
    super.key,
    required this.item,
  });

  final AllExpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xFF4EB7F2),
            ),
            borderRadius: BorderRadius.circular(12),
          )),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        AllExpensesItemHeader(
          imageColor: Colors.white,
          backgroundColor: Colors.white.withOpacity(0.10000000149011621),
          image: item.image,
        ),
        const SizedBox(
          height: 34,
        ),
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.title,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: Colors.white),
            )),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            item.date,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: const Color(0xffFAFAFA)),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            item.price,
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
