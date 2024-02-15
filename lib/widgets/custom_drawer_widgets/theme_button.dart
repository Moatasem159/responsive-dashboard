part of'custom_drawer.dart';
class _ThemeButton extends StatelessWidget {
  const _ThemeButton();
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:BlocProvider.of<ThemeCubit>(context).changeTheme,
      leading:  Icon(Icons.brightness_4_outlined,
       color: context.colorScheme.secondary,),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          "Change Theme mode",
          style: AppStyles.styleMedium16(context),
        ),
      ),
    );
  }
}