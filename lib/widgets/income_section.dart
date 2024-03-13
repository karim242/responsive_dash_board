import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/all_expenes_header.dart';
import 'package:responsive_dash_board/widgets/custom_background_countainer.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';
import 'package:responsive_dash_board/widgets/range_option.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        AllHeader(
          title: 'All Expenses',
          rangeOption: RangeOpition(),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(child: IncomeDetails())
            ],
          ),
        )
      ],
    ));
  }
}
