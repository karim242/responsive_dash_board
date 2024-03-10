
import 'package:flutter/material.dart';

class QuickAddIcon extends StatelessWidget {
  const QuickAddIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: const ShapeDecoration(
        color: Color(0xffFAFAFA),
        shape: OvalBorder(),
      ),
      child: const Icon(
        Icons.add,
        color: Color(0xff4EB7F2),
      ),
    );
  }
}
