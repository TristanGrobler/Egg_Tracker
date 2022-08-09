import 'package:eggtracker/screens/main%20report%20screen/widgets/house_totals_gauge.dart';
import 'package:eggtracker/screens/main%20report%20screen/widgets/totals_gauge_widget.dart';
import 'package:eggtracker/screens/main%20report%20screen/widgets/totals_graph_widget.dart';
import 'package:flutter/material.dart';

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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Expanded(
                        child: TotalGraphWidget(),
                      ),
                      TotalsGaugeWidget(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HouseTotalsGauge(houseNumber: 1),
                      HouseTotalsGauge(houseNumber: 2),
                      HouseTotalsGauge(houseNumber: 3),
                      HouseTotalsGauge(houseNumber: 4),
                      HouseTotalsGauge(houseNumber: 5),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HouseTotalsGauge(houseNumber: 6),
                      HouseTotalsGauge(houseNumber: 7),
                      HouseTotalsGauge(houseNumber: 8),
                      HouseTotalsGauge(houseNumber: 9),
                      HouseTotalsGauge(houseNumber: 10),
                    ],
                  ),
                ],
              )
            : Column(
                children: [
                  TotalsGaugeWidget(),
                  TotalGraphWidget(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HouseTotalsGauge(houseNumber: 1),
                      HouseTotalsGauge(houseNumber: 2),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HouseTotalsGauge(houseNumber: 3),
                      HouseTotalsGauge(houseNumber: 4),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HouseTotalsGauge(houseNumber: 5),
                      HouseTotalsGauge(houseNumber: 6),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HouseTotalsGauge(houseNumber: 7),
                      HouseTotalsGauge(houseNumber: 8),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HouseTotalsGauge(houseNumber: 9),
                      HouseTotalsGauge(houseNumber: 10),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
