import 'package:flutter/material.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:responsive_dash_board/widgets/card.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: List.generate(
        3,
        (index) => Cards(x: '${index + 1}'),
      ),
    );
  }
}
