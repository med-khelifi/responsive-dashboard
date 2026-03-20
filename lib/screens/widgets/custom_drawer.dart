import 'package:dashboard/core/constants/app_images.dart';
import 'package:dashboard/screens/widgets/custom_drawer_list.dart';
import 'package:dashboard/screens/widgets/inactive_custom_drawer_list_item.dart';
import 'package:dashboard/screens/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        UserInfoListTile(
          image: AppAssets.imagesAvatar3,
          title: "Lekan Okeowo",
          subtitle: "demo@gmail.com",
        ),
        CustomDrawerList(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SizedBox(height: 20),
              Spacer(),
              InActiveCustomDrawerListItem(
                title: "Setting system",
                image: AppAssets.imagesSettings,
              ),
              InActiveCustomDrawerListItem(
                title: "Logout account",
                image: AppAssets.imagesLogout,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
