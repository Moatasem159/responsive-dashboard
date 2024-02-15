import 'package:dashboard/widgets/custom_drawer_widgets/custom_drawer.dart';
import 'package:dashboard/widgets/layouts/mobile_layout.dart';
import 'package:flutter/material.dart';
class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: MobileLayout(),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}