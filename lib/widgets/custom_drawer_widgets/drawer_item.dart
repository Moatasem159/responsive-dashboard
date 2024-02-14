import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/widgets/custom_drawer_widgets/active_and_inactive_drawer_item.dart';
import 'package:flutter/material.dart';
class DrawerItem extends StatelessWidget {
  final bool isActive;
  final DrawerItemModel drawerItemModel;
  const DrawerItem({super.key, required this.drawerItemModel, required this.isActive});
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}