import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/all_card.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';

class AllCardSection extends StatelessWidget {
  const AllCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 15,
        ),
        AllCard(),
        SizedBox(
          height: 10,
        ),
        Expanded(child: IncomeSection()),
      ],
    );
  }
}
