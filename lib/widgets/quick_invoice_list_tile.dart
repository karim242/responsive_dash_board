import 'package:flutter/material.dart';

import 'package:responsive_dash_board/models/quick_invoice_item_model.dart';

import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class QuickInvoivceListTile extends StatelessWidget {
  const QuickInvoivceListTile({
    super.key,
    required this.itemModel,
  });
  final QuickInvoiveItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return UserInfoListTile(
      image: itemModel.image,
      title: itemModel.title,
      subtitle: itemModel.subtitle,
    );
  }
}
