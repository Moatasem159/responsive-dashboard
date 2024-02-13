import 'package:dashboard/screens/dashboard_screen.dart';
import 'package:dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}