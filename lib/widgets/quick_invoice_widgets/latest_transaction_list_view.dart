part of'quick_invoice.dart';
class _LatestTransactionListView extends StatelessWidget {
  const _LatestTransactionListView();

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
