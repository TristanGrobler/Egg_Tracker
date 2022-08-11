import 'package:eggtracker/constants/pal.dart';
import 'package:eggtracker/constants/sty.dart';
import 'package:eggtracker/screens/house%20report%20screen/widgets/house_day_guage.dart';
import 'package:eggtracker/screens/house%20report%20screen/widgets/house_mortality_graph.dart';
import 'package:eggtracker/screens/house%20report%20screen/widgets/house_mortality_guage.dart';
import 'package:eggtracker/screens/house%20report%20screen/widgets/house_yield_graph.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';

class HouseReportScreen extends StatelessWidget {
  HouseReportScreen({required this.house});

  final int house;

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
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'HOUSE $house',
                      style: Sty.header1TS,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: HouseYieldGraph(),
                      ),
                      HouseDayGauge(),
                    ],
                  ),
                  Row(
                    children: [
                      HouseMortalityGauge(),
                      Expanded(
                        child: HouseMortalityGraph(),
                      )
                    ],
                  )
                ],
              )
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'HOUSE $house',
                      style: Sty.header1TS,
                    ),
                  ),
                  HouseDayGauge(),
                  HouseYieldGraph(),
                  HouseMortalityGauge(),
                  HouseMortalityGraph(),
                ],
              ),
      ),
      floatingActionButton: ExpandableFab(
        fanAngle: 55,
        backgroundColor: Pal.primary1,
        foregroundColor: Pal.accent1,
        child: Icon(Icons.add),
        closeButtonStyle: ExpandableFabCloseButtonStyle(
          backgroundColor: Colors.white38,
          foregroundColor: Pal.accent1,
        ),
        children: [
          FloatingActionButton(
            backgroundColor: Pal.primary1,
            foregroundColor: Pal.accent1,
            child: const Icon(Icons.warning_amber_sharp),
            onPressed: () {},
          ),
          FloatingActionButton(
            backgroundColor: Pal.primary1,
            foregroundColor: Pal.accent1,
            child: const Icon(Icons.egg),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
