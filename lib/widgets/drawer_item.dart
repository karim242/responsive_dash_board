import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key, required this.item, required this.isSelected});
  final DrawerItemModel item;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveDrawerItem(item: item)
        : InActiveDrawerItem(item: item);
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: Text(
        item.title,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: Text(
        item.title,
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        width: 3.27,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
