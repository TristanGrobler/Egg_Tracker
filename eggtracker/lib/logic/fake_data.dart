import 'dart:math';

import 'package:fl_chart/fl_chart.dart';

class FakeData {
  static List<FlSpot> stats() {
    Random rand = Random();
    return [
      FlSpot(0, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(1, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(2, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(3, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(4, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(5, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(6, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(7, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(8, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(9, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(10, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(11, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(12, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(13, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(14, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(15, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(16, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(17, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(18, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(19, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(20, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(21, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(22, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(23, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(24, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(25, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(26, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(27, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(28, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(29, rand.nextInt(49000).toDouble() + 150000),
      FlSpot(30, rand.nextInt(49000).toDouble() + 150000),
    ];
  }
}
