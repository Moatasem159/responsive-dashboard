import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';
class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel>items = [
    UserInfoModel(
        image: Assets.avatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.avatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.avatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(user: e)))
            .toList(),
      ),
    );
  }
}
