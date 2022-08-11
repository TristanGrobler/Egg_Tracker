import 'package:eggtracker/constants/pal.dart';
import 'package:eggtracker/constants/sty.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../logic/fake_data.dart';

class HouseYieldGraph extends StatelessWidget {
  const HouseYieldGraph({Key? key}) : super(key: key);

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
        child: Column(
          children: [
            Padding(
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
                          tooltipBgColor: Pal.primary1,
                          tooltipRoundedRadius: 3.0,
                        ),
                      ),
                      minX: 0,
                      maxX: _isNarrow ? 15 : 30,
                      minY: 0,
                      maxY: 20000,
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  child: Icon(Icons.chevron_left),
                                  onTap: () {},
                                ),
                                Text(
                                  _isNarrow ? '15 Day Yield' : '30 Day Yield',
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
                              ? FakeData.houseEggsLaidNarrow
                              : FakeData.houseEggsLaidWide,
                          isCurved: true,
                          color: Pal.accent1.withOpacity(0.7),
                          barWidth: 3,
                          //dotData: FlDotData(show: false),
                          belowBarData: BarAreaData(
                              show: true, color: Pal.accent1.withOpacity(0.1)),
                        ),
                        LineChartBarData(
                          spots: _isNarrow
                              ? FakeData.houseBirdCountNarrow
                              : FakeData.houseBirdCountWide,
                          isCurved: true,
                          color: Pal.primary2.withOpacity(0.7),
                          barWidth: 3,
                          //dotData: FlDotData(show: false),
                          belowBarData: BarAreaData(
                              show: true, color: Pal.primary2.withOpacity(0.1)),
                        ),
                      ],
                    ),
                    swapAnimationDuration: const Duration(milliseconds: 400),
                    swapAnimationCurve: Curves.easeIn,
                  )),
            ),
            Text(
              'Eggs Laid',
              style:
                  TextStyle(color: Pal.primary2, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Bird Count',
                style:
                    TextStyle(color: Pal.accent1, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
