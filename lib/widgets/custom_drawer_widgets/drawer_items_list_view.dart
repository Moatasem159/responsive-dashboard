import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/widgets/custom_drawer_widgets/drawer_item.dart';
import 'package:flutter/widgets.dart';
class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});
  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}
class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.dashboard),
    const DrawerItemModel(title: 'My Transaction', image: Assets.myTransctions),
    const DrawerItemModel(title: 'Statistics', image: Assets.statistics),
    const DrawerItemModel(title: 'Wallet Account', image: Assets.walletAccount),
    const DrawerItemModel(title: 'My Investments', image: Assets.myInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
