import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_botton.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                hintText: 'Type customer name',
                title: 'Customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTextField(
                hintText: 'Type customer email',
                title: 'Customer email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                hintText: 'Type customer name',
                title: 'Item name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTextField(
                hintText: 'USD',
                title: 'Item mount',
              ),
            ),
          ],
        ),
          SizedBox(
                  height: 24,
                ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textcolor: Color(0xff4EB7F2),
                bgColor: Colors.white,
              ),
            ),
              SizedBox(
                  width: 16,
                ),
            Expanded(
              child: CustomButton(),
            ),
          ],
        )
      ],
    );
  }
}
