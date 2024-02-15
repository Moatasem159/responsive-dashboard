import 'package:dashboard/utils/size_config.dart';
import 'package:dashboard/widgets/custom_drawer_widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/extension/context_extension.dart';
import 'package:dashboard/widgets/layouts/mobile_layout.dart';
import 'package:dashboard/widgets/layouts/tablet_layout.dart';
import 'package:dashboard/widgets/layouts/desktop_layout.dart';
import 'package:dashboard/widgets/layouts/adaptive_layout.dart';
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar:context.width < SizeConfig.tablet
          ? AppBar(
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu)),
      )
          : null,
      drawer: context.width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      backgroundColor: context.colorScheme.background,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}