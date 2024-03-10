import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.textcolor, this.bgColor});
  final Color? textcolor, bgColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            backgroundColor: bgColor ?? const Color(0xff4EB7F2),
            elevation: 0),
        onPressed: () {},
        child: Text(
          'Send Money',
          style: AppStyles.styleSemiBold18(context).copyWith(color: textcolor),
        ),
      ),
    );
  }
}
