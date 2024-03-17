import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_layout.dart';

class DashboardTabletlayout extends StatelessWidget {
  const DashboardTabletlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 24,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: DashboardMobileLayout(),
            )),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}