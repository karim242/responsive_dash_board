import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int active = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1, 
      child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(touchCallback: (touch, holder) {
          active = holder?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {
            
          });
        }),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              radius: active == 0 ? 50 : 40,
              value: 40,
              color: const Color(0xff208cc7),
              showTitle: false),
          PieChartSectionData(
              radius: active == 1 ? 50 : 40,
              value: 22,
              color: const Color(0xffE2DECD),
              showTitle: false),
          PieChartSectionData(
              radius: active == 2 ? 50 : 40,
              value: 20,
              color: const Color(0xff064061),
              showTitle: false),
          PieChartSectionData(
              radius: active == 3 ? 50 : 40,
              value: 25,
              color: const Color(0xff4EB7F2),
              showTitle: false),
        ]);
  }
}
