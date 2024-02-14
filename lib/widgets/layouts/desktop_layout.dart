import 'package:dashboard/widgets/custom_drawer_widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
class DesktopLayout extends StatelessWidget{
  const DesktopLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomDrawer(),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}


