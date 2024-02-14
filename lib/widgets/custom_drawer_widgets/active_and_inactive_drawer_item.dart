import 'package:dashboard/extension/context_extension.dart';
import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_text_styles.dart';
import 'package:dashboard/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
class InActiveDrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  const InActiveDrawerItem({super.key, required this.drawerItemModel});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomIcon(icon: drawerItemModel.image,color: context.colorScheme.secondary),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemModel.title,
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}
class ActiveDrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  const ActiveDrawerItem({super.key, required this.drawerItemModel});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomIcon(icon: drawerItemModel.image,color: context.colorScheme.primary),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        width: 3.27,
        decoration:BoxDecoration(color: context.colorScheme.primary),
      ),
    );
  }
}