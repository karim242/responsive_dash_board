import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/dot_indicator.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class AllCardItem extends StatefulWidget {
  const AllCardItem({
    super.key,
  });

  @override
  State<AllCardItem> createState() => _AllCardItemState();
}

class _AllCardItemState extends State<AllCardItem> {
  late PageController pageController;
  int selectIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      selectIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 10,
        ),
        MyCard(
          pageController: pageController,
        ),
        const SizedBox(
          height: 10,
        ),
        DotIndicator(
          selectIndex: selectIndex,
        ),
        const Divider(
          height: 30,
          color: Color(0xffF1F1F1),
        ),
      ],
    );
  }
}
