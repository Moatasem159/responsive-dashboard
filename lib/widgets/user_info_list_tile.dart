import 'package:dashboard/extension/context_extension.dart';
import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class UserInfoListTile extends StatelessWidget {
  final UserInfoModel user;
  const UserInfoListTile({super.key, required this.user});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color:context.theme.colorScheme.onBackground,
      child: Center(
        child: ListTile(
          leading:SvgPicture.asset(user.image),
          title: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(user.title,style: AppStyles.styleSemiBold16(context))),
          subtitle: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(user.subTitle,style: AppStyles.styleRegular12(context))),
        ),
      ),
    );
  }
}