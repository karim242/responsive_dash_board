import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<IncomeDetailsModel> incomeData = [
    IncomeDetailsModel(
        color: Color(0xff208CC8), title: 'Design service', value: '%40'),
    IncomeDetailsModel(
        color: Color(0xff4EB7F2), title: 'Design product', value: '%25'),
    IncomeDetailsModel(
        color: Color(0xff064061), title: 'Product royalti', value: '%20'),
    IncomeDetailsModel(color: Color(0xffE2DECD), title: 'Other', value: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: incomeData.map((e) => IncomeDetailsList(item: e)).toList(),
    );

    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: incomeData.length,
    //   itemBuilder: (BuildContext context, int index) {
    //     return IncomeDetailsList(item: incomeData[index]);
    //   },
    // );
  }
}

class IncomeDetailsList extends StatelessWidget {
  const IncomeDetailsList({super.key, required this.item});
  final IncomeDetailsModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Container(
          width: 12,
          height: 12,
          decoration:
              ShapeDecoration(color: item.color, shape: const OvalBorder()),
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            item.title,
            style: AppStyles.styleRegular16(context),
          ),
        ),
        trailing: Text(
          item.value,
          style: AppStyles.styleMedium16(context),
        ));
  }
}
