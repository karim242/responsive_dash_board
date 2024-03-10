import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenes_header.dart';
import 'package:responsive_dash_board/widgets/custom_background_countainer.dart';
import 'package:responsive_dash_board/widgets/quick_add_icon.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_list_view.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      paddingValue: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AllExpensesHeader(
            title: 'Quick Invoice',
            rangeOption: QuickAddIcon(),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Latest Transaction",
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 12,
          ),
          const QuickInvoiceListView(),
          const Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          const QuickInvoiceForm()
        ],
      ),
    );
  }
}
