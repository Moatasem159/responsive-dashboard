import 'package:dashboard/screens/dashboard_screen.dart';
import 'package:dashboard/utils/app_theme.dart';
import 'package:dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: const DashboardScreen(),
    );
  }
}