
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/quick_invoice_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_list_tile.dart';

class QuickInvoiceListView extends StatelessWidget {
  const QuickInvoiceListView({
    super.key,
  
  });

 final List<QuickInvoiveItemModel> item = const [
    QuickInvoiveItemModel(
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail",
        image: Assets.imagesAvatar1),
    QuickInvoiveItemModel(
        title: "Josua Nunito",
        subtitle: "JoshNunito@gmail.com",
        image: Assets.imagesAvatar2),
    QuickInvoiveItemModel(
        title: "Madrani Andi ",
        subtitle: "Madraniadi20@gmail",
        image: Assets.imagesAvatar3),
    QuickInvoiveItemModel(
        title: "Madrani Andi ",
        subtitle: "Madraniadi20@gmail",
        image: Assets.imagesAvatar3),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: item
            .map((e) => IntrinsicWidth(
                child: QuickInvoivceListTile(itemModel: e)))
            .toList(),
      ),
    );
  }
}
