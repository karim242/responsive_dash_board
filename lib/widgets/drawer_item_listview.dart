import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(image: Assets.imagesDashbord, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransctions, title: 'My Transctions'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItems(
              item: items[index],
              isSelected: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
