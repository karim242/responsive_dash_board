import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dot.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.selectIndex});

  final int selectIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
      3,
      (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: CustomDotIndecator(isActive: index == selectIndex),
        );
      },
    ));
  }
}
