import 'package:flutter/material.dart';
import 'package:dashboard/extension/context_extension.dart';
import 'package:dashboard/widgets/layouts/mobile_layout.dart';
import 'package:dashboard/widgets/layouts/tablet_layout.dart';
import 'package:dashboard/widgets/layouts/desktop_layout.dart';
import 'package:dashboard/widgets/layouts/adaptive_layout.dart';
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}