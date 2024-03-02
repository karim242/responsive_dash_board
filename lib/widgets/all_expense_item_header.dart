import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.backgroundColor,
  });
  final String image;
  final Color? imageColor, backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            color: backgroundColor ?? const Color(0xffFAFAFA),
            shape: const OvalBorder(),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
          ),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: 3.14159,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor == null ? const Color(0xFF4EB7F2) : Colors.white,
            // color: Colors.white,
          ),
        )
      ],
    );
  }
}
