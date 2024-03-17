import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_item_listview.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.6,
      color: Colors.white,
      child: const CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'Karim Elsayed',
            subtitle: 'Karimelsayed@yahoo.com',
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        DrawerItemListView(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  height: 20,
                ),
              ),
              InActiveDrawerItem(
                  item: DrawerItemModel(
                      image: Assets.imagesSettings, title: "Setting system")),
              InActiveDrawerItem(
                  item: DrawerItemModel(
                      image: Assets.imagesLogout, title: "Logout account")),
              SizedBox(
                height: 48,
              )
            ],
          ),
        )
      ]),
    );
  }
}
