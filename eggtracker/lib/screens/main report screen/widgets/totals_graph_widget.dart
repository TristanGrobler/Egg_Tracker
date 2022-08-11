import 'package:eggtracker/constants/pal.dart';
import 'package:eggtracker/constants/sty.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../logic/fake_data.dart';

class TotalGraphWidget extends StatelessWidget {
  const TotalGraphWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isNarrow = MediaQuery.of(context).size.width < 600 ? true : false;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Pal.primary2.withOpacity(0.03),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Pal.accent1.withOpacity(0.7),
            style: BorderStyle.solid,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: 700,
            height: 700,
            margin: const EdgeInsets.fromLTRB(5.0, 15.0, 20.0, 0.0),
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(
                  handleBuiltInTouches: true,
                  touchTooltipData: LineTouchTooltipData(
                    tooltipBgColor: Pal.primary2,
                    tooltipRoundedRadius: 3.0,
                  ),
                ),
                minX: 0,
                maxX: _isNarrow ? 15 : 30,
                minY: 100000,
                maxY: 250000,
                baselineX: 0,
                baselineY: 0,
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    axisNameWidget: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Eggs Laid'),
                    ),
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 22,
                      interval: 2,
                      getTitlesWidget: (value, titleMeta) {
                        DateTime _date = DateTime.now()
                            .add(Duration(days: value.toInt() - 30));
                        return Transform.rotate(
                            angle: -45,
                            child: Text('${_date.day}-${_date.month}  '));
                      },
                    ),
                  ),
                  topTitles: AxisTitles(
                    axisNameSize: 80,
                    axisNameWidget: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child: Icon(Icons.chevron_left),
                            onTap: () {},
                          ),
                          Text(
                            _isNarrow ? '15 Day Eggs Laid' : '30 Day Eggs Laid',
                            style: Sty.header1TS,
                          ),
                          InkWell(
                            child: Icon(Icons.chevron_right),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  rightTitles: AxisTitles(),
                ),
                gridData: FlGridData(
                  show: false,
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: _isNarrow
                        ? FakeData.totalEggsLaidNarrow
                        : FakeData.totalEggsLaidWide,
                    isCurved: true,
                    color: Pal.accent1.withOpacity(0.7),
                    barWidth: 3,
                    //dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                        show: true, color: Pal.accent1.withOpacity(0.1)),
                  ),
                ],
              ),
              swapAnimationDuration: const Duration(milliseconds: 400),
              swapAnimationCurve: Curves.easeIn,
            ),
          ),
        ),
      ),
    );
  }
}
