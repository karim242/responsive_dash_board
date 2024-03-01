import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_desketop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desketopLayout: (context) => const DesketopLayout(),
      ),
    );
  }
}
