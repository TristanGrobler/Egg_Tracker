import 'package:eggtracker/constants/pal.dart';
import 'package:eggtracker/logic/fake_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../constants/sty.dart';

class MainReportScreen extends StatelessWidget {
  const MainReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
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
                          maxX: 30,
                          minY: 100000,
                          maxY: 250000,
                          baselineX: 0,
                          baselineY: 0,
                          titlesData: FlTitlesData(
                            show: true,
                            // leftTitles: AxisTitles(
                            //   axisNameWidget: Padding(
                            //     padding: const EdgeInsets.all(8.0),
                            //     child: Text('Eggs Laid'),
                            //   ),
                            // ),
                            // bottomTitles: AxisTitles(
                            //   axisNameWidget: Padding(
                            //     padding: const EdgeInsets.all(8.0),
                            //     child: Text('Eggs Laid'),
                            //   ),
                            //   sideTitles: SideTitles(
                            //       reservedSize: 100,
                            //       interval: 1,
                            //       getTitlesWidget: (interval, data) {
                            //         return Text('$interval');
                            //       }),
                            // ),
                            topTitles: AxisTitles(),
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
                              spots: FakeData.stats(),
                              isCurved: true,
                              color: Pal.accent1.withOpacity(0.7),
                              barWidth: 3,
                              //dotData: FlDotData(show: false),
                              belowBarData: BarAreaData(
                                  show: true,
                                  color: Pal.accent1.withOpacity(0.1)),
                            ),
                          ],
                        ),
                        swapAnimationDuration:
                            const Duration(milliseconds: 400),
                        swapAnimationCurve: Curves.easeIn,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
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
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.chevron_left),
                        Text(
                          '${DateTime.now().year} - ${DateTime.now().month} - ${DateTime.now().day}',
                          style: Sty.header2TS,
                          textAlign: TextAlign.center,
                        ),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      'Eggs Laid:',
                      style: Sty.header1TS,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '181 078 334',
                      textAlign: TextAlign.center,
                      style: Sty.bodySoftTS,
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      'Bird Count:',
                      style: Sty.header1TS,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '198 885 332',
                      textAlign: TextAlign.center,
                      style: Sty.bodySoftTS,
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SfRadialGauge(
                        title: GaugeTitle(
                          text: 'Percentage Laying:',
                          textStyle: Sty.header1TS,
                        ),
                        axes: <RadialAxis>[
                          RadialAxis(
                            maximum: 100,
                            annotations: [
                              GaugeAnnotation(
                                widget: Container(
                                  child: Text(
                                    '91.04%',
                                    textAlign: TextAlign.center,
                                    style: Sty.bodySoftTS,
                                  ),
                                ),
                                angle: 90,
                              )
                            ],
                            showLabels: false,
                            showTicks: false,
                            axisLineStyle: AxisLineStyle(
                              thickness: 0.2,
                              cornerStyle: CornerStyle.bothCurve,
                              thicknessUnit: GaugeSizeUnit.factor,
                              color: Pal.primary2.withOpacity(0.2),
                            ),
                            pointers: <GaugePointer>[
                              RangePointer(
                                gradient: SweepGradient(
                                  colors: [
                                    Pal.primary2,
                                    Pal.accent1,
                                  ],
                                ),
                                enableAnimation: true,
                                value: 91,
                                cornerStyle: CornerStyle.bothCurve,
                                width: 0.2,
                                sizeUnit: GaugeSizeUnit.factor,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
