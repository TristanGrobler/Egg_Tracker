import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../constants/pal.dart';
import '../../../constants/sty.dart';

class HouseTotalsGauge extends StatelessWidget {
  HouseTotalsGauge({required this.houseNumber});
  final double houseNumber;

  @override
  Widget build(BuildContext context) {
    int percentage = Random().nextInt(20) + 79;
    double width = MediaQuery.of(context).size.width;
    bool _isDesktop = MediaQuery.of(context).size.width > 1000 ? true : false;

    print(width);

    double getSize() {
      if (width < 600) {
        return (width - 80) / 3;
      } else if (width < 1000) {
        return (width - 170) / 3;
      } else {
        return (width - 170) / 6;
      }
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: getSize(),
        width: getSize(),
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(_isDesktop ? 16 : 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_filled,
                    size: _isDesktop ? 40 : 20,
                  ),
                  Text(
                    '$houseNumber',
                    style: _isDesktop ? Sty.header1TS : Sty.header2TS,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SfRadialGauge(
                  axes: <RadialAxis>[
                    RadialAxis(
                      maximum: 100,
                      annotations: [
                        GaugeAnnotation(
                          widget: Container(
                            child: Text(
                              '$percentage%',
                              textAlign: TextAlign.center,
                              style: _isDesktop
                                  ? Sty.bodySoft1TS
                                  : Sty.bodySoft2TS,
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
                          value: percentage.toDouble(),
                          cornerStyle: CornerStyle.bothCurve,
                          width: 0.2,
                          sizeUnit: GaugeSizeUnit.factor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
