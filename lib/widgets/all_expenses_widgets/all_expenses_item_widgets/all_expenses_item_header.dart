part of'all_expenses_item.dart';
class _AllExpensesItemHeader extends StatelessWidget {
  final String image;
  const _AllExpensesItemHeader({required this.image});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: const ShapeDecoration(
                  shape: OvalBorder(),
                ),
                child: Center(
                  child: CustomIcon(icon: image,color:context.colorScheme.secondary),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color:context.colorScheme.secondary ,
          ),
        ),
      ],
    );
  }
}
