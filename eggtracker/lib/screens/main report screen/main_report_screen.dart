import 'package:eggtracker/screens/main%20report%20screen/widgets/all_day_gauage.dart';
import 'package:eggtracker/screens/main%20report%20screen/widgets/house_totals_gauge.dart';
import 'package:flutter/material.dart';

import '../../constants/sty.dart';

class MainReportScreen extends StatelessWidget {
  const MainReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isDesktop = MediaQuery.of(context).size.width > 1000 ? true : false;
    return Scaffold(
        body: SingleChildScrollView(
      controller: ScrollController(),
      child: _isDesktop
          ? Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'All Houses Report',
                    style: Sty.header1TS,
                  ),
                ),
                Row(
                  children: [
                    AllDayGauge(),
                    Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                        controller: null,
                        itemCount: 10,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 300,
                          mainAxisExtent: 150,
                        ),
                        itemBuilder: (context, int index) {
                          return HouseTotalsGauge(houseNumber: index + 1);
                        },
                      ),
                    ),
                    // Column(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     HouseTotalsGauge(houseNumber: 1),
                    //     HouseTotalsGauge(houseNumber: 2),
                    //     HouseTotalsGauge(houseNumber: 3),
                    //     HouseTotalsGauge(houseNumber: 4),
                    //     HouseTotalsGauge(houseNumber: 5),
                    //   ],
                    // ),
                    // Column(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     HouseTotalsGauge(houseNumber: 6),
                    //     HouseTotalsGauge(houseNumber: 7),
                    //     HouseTotalsGauge(houseNumber: 8),
                    //     HouseTotalsGauge(houseNumber: 9),
                    //     HouseTotalsGauge(houseNumber: 10),
                    //   ],
                    // ),
                  ],
                ),
              ],
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'All Houses Report',
                    style: Sty.header1TS,
                  ),
                ),
                AllDayGauge(),
                GridView.builder(
                  shrinkWrap: true,
                  controller: ScrollController(),
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    mainAxisExtent: 150,
                  ),
                  itemBuilder: (context, int index) {
                    return HouseTotalsGauge(houseNumber: index + 1);
                  },
                ),
              ],
            ),
    ));
  }
}
