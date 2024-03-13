import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllHeader extends StatelessWidget {
  const AllHeader({
    super.key, required this.title, required this.rangeOption,
  });
  final String title;
  final  Widget  rangeOption;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        rangeOption
      ])
    ]);
  }
}
