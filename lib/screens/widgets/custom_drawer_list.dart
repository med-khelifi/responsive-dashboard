import 'package:dashboard/data/dashboard_data.dart';
import 'package:dashboard/screens/widgets/active_custom_drawer_list_item.dart';
import 'package:dashboard/screens/widgets/inactive_custom_drawer_list_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerList extends StatefulWidget {
  const CustomDrawerList({super.key});

  @override
  State<CustomDrawerList> createState() => _CustomDrawerListState();
}

class _CustomDrawerListState extends State<CustomDrawerList> {
  int selectIndex = 1;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerListItems.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (index == selectIndex) return;
          setState(() {
            selectIndex = index;
          });
        },
        child: Padding(
          padding: EdgeInsetsGeometry.only(top: 20),
          child: selectIndex == index
              ? ActiveCustomDrawerListItem(
                  title: drawerListItems[index].label,
                  image: drawerListItems[index].imagePath,
                )
              : InActiveCustomDrawerListItem(
                  title: drawerListItems[index].label,
                  image: drawerListItems[index].imagePath,
                ),
        ),
      ),
    );
  }
}
