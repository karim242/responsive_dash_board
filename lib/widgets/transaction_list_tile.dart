import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionlistTile extends StatelessWidget {
  const TransactionlistTile({super.key, required this.item});
  final TransactionItem item;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        title: Text(
          item.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          item.subtitle,
          style: AppStyles.styleRegular14(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          item.trailing,
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: item.withderawel
                  ? const Color(0xffF3735E)
                  : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
