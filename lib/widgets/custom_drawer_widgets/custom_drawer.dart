import 'package:dashboard/blocs/theme_cubit.dart';
import 'package:dashboard/extension/context_extension.dart';
import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/utils/app_text_styles.dart';
import 'package:dashboard/widgets/custom_drawer_widgets/active_and_inactive_drawer_item.dart';
import 'package:dashboard/widgets/custom_drawer_widgets/drawer_items_list_view.dart';
import 'package:dashboard/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'theme_button.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: context.colorScheme.onBackground,
      padding: const EdgeInsets.only(top: 5,right: 10,left: 10),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              user: UserInfoModel(
                image: Assets.avatar3,
                title: "Lekan Okeowo",
                subTitle: "demo@gmail.com",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                _ThemeButton(),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    image: Assets.settings,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout account',
                    image: Assets.logout,
                  ),
                ),
                SizedBox(
                  height:32,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

