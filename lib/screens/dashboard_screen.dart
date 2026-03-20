import 'package:dashboard/core/widgets/adaptive_layout.dart';
import 'package:dashboard/screens/widgets/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        desktopLayout: (context) => DashboardDesktopLayout(),
      ),
    );
  }
}
