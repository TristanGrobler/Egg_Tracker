import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../constants/pal.dart';
import '../../../constants/sty.dart';

class TotalsGaugeWidget extends StatelessWidget {
  const TotalsGaugeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              style: Sty.bodySoft1TS,
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
              style: Sty.bodySoft1TS,
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
                            style: Sty.bodySoft1TS,
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
    );
  }
}
