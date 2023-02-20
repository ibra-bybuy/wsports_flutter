import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:watch_sports/core/functions/size_config.dart';

class FighterStatChart extends StatelessWidget {
  final double all;
  final double landed;
  final List<Widget> children;

  const FighterStatChart(
    this.all,
    this.landed, {
    super.key,
    this.children = const [],
  });

  @override
  Widget build(BuildContext context) {
    final precentage = all > 0 ? landed / all * 100 : 0.0;
    final precentInt = precentage.ceil().toInt();

    return SizedBox(
      height: SizeConfig(context, 130.0)(),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: SizeConfig(context, 150.0)(),
            child: PieChart(
              PieChartData(
                startDegreeOffset: 3.14 * 35,
                sections: [
                  PieChartSectionData(
                    value: 100 - precentage,
                    color: Colors.white,
                    showTitle: false,
                  ),
                  PieChartSectionData(
                    value: precentage,
                    color: Colors.red,
                    title: "$precentInt%",
                    titleStyle: TextStyle(
                        color: precentInt < 10 ? Colors.black87 : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig(context, 14.0)()),
                  ),
                ],
              ),
              swapAnimationDuration: const Duration(milliseconds: 150),
              swapAnimationCurve: Curves.linear,
            ),
          ),
          if (children.isNotEmpty) ...[
            Padding(
              padding: const EdgeInsets.only(right: 20.0, bottom: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: children,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
