part of'dots_indicator.dart';
class _CustomDotIndicator extends StatelessWidget {
  final bool isActive;
  const _CustomDotIndicator(this.isActive);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
        color: isActive ? context.colorScheme.primary : const Color(0xFFE7E7E7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
