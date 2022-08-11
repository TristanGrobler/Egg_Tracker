import 'dart:math';

import 'package:fl_chart/fl_chart.dart';

class FakeData {
  FakeData() {
    setHouseEggsLaidNarrow();
    setHouseEggsLaidWide();
    setHouseBirdCountNarrow();
    setHouseBirdCountWide();
    setTotalEggsLaidNarrow();
    setTotalEggsLaidWide();
    setHouseMortalityNarrow();
    setHouseMortalityWide();
  }

  static List<FlSpot> houseEggsLaidNarrow = [];
  static List<FlSpot> houseEggsLaidWide = [];
  static List<FlSpot> totalEggsLaidNarrow = [];
  static List<FlSpot> totalEggsLaidWide = [];
  static List<FlSpot> houseBirdCountNarrow = [];
  static List<FlSpot> houseBirdCountWide = [];
  static List<FlSpot> houseMortalityNarrow = [];
  static List<FlSpot> houseMortalityWide = [];

  static refresh() {
    houseEggsLaidNarrow = [];
    houseEggsLaidWide = [];
    totalEggsLaidNarrow = [];
    totalEggsLaidWide = [];
    houseBirdCountNarrow = [];
    houseBirdCountWide = [];
    houseMortalityNarrow = [];
    houseMortalityWide = [];
    FakeData();
  }

  setHouseEggsLaidNarrow() {
    Random rand = Random();
    houseEggsLaidNarrow = [
      FlSpot(0, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(1, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(2, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(3, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(4, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(5, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(6, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(7, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(8, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(9, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(10, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(11, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(12, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(13, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(14, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(15, rand.nextInt(4500).toDouble() + 9000),
    ];
  }

  setHouseEggsLaidWide() {
    Random rand = Random();
    houseEggsLaidWide = [
      FlSpot(0, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(1, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(2, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(3, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(4, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(5, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(6, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(7, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(8, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(9, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(10, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(11, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(12, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(13, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(14, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(15, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(16, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(17, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(18, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(19, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(20, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(21, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(22, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(23, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(24, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(25, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(26, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(27, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(28, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(29, rand.nextInt(4500).toDouble() + 9000),
      FlSpot(30, rand.nextInt(4500).toDouble() + 9000),
    ];
  }

  setTotalEggsLaidNarrow() {
    Random rand = Random();
    totalEggsLaidNarrow = [
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
    ];
  }

  setTotalEggsLaidWide() {
    Random rand = Random();
    totalEggsLaidWide = [
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

  setHouseBirdCountNarrow() {
    Random rand = Random();

    houseBirdCountNarrow = [];
    for (int x = 0; x < houseEggsLaidNarrow.length; x++) {
      FlSpot spot = houseEggsLaidNarrow[x];
      spot = FlSpot(spot.x, (spot.y + rand.nextInt(1000)));
      houseBirdCountNarrow.add(spot);
    }
  }

  setHouseBirdCountWide() {
    Random rand = Random();
    houseBirdCountWide = [];
    for (int x = 0; x < houseEggsLaidWide.length; x++) {
      FlSpot spot = houseEggsLaidWide[x];
      spot = FlSpot(spot.x, (spot.y + rand.nextInt(1000)));
      houseBirdCountWide.add(spot);
    }
  }

  setHouseMortalityNarrow() {
    Random rand = Random();
    houseMortalityNarrow = [
      FlSpot(0, rand.nextInt(1000).toDouble()),
      FlSpot(1, rand.nextInt(1000).toDouble()),
      FlSpot(2, rand.nextInt(1000).toDouble()),
      FlSpot(3, rand.nextInt(1000).toDouble()),
      FlSpot(4, rand.nextInt(1000).toDouble()),
      FlSpot(5, rand.nextInt(1000).toDouble()),
      FlSpot(6, rand.nextInt(1000).toDouble()),
      FlSpot(7, rand.nextInt(1000).toDouble()),
      FlSpot(8, rand.nextInt(1000).toDouble()),
      FlSpot(9, rand.nextInt(1000).toDouble()),
      FlSpot(10, rand.nextInt(1000).toDouble()),
      FlSpot(11, rand.nextInt(1000).toDouble()),
      FlSpot(12, rand.nextInt(1000).toDouble()),
      FlSpot(13, rand.nextInt(1000).toDouble()),
      FlSpot(14, rand.nextInt(1000).toDouble()),
      FlSpot(15, rand.nextInt(1000).toDouble()),
    ];
  }

  setHouseMortalityWide() {
    Random rand = Random();
    houseMortalityWide = [
      FlSpot(0, rand.nextInt(1000).toDouble()),
      FlSpot(1, rand.nextInt(1000).toDouble()),
      FlSpot(2, rand.nextInt(1000).toDouble()),
      FlSpot(3, rand.nextInt(1000).toDouble()),
      FlSpot(4, rand.nextInt(1000).toDouble()),
      FlSpot(5, rand.nextInt(1000).toDouble()),
      FlSpot(6, rand.nextInt(1000).toDouble()),
      FlSpot(7, rand.nextInt(1000).toDouble()),
      FlSpot(8, rand.nextInt(1000).toDouble()),
      FlSpot(9, rand.nextInt(1000).toDouble()),
      FlSpot(10, rand.nextInt(1000).toDouble()),
      FlSpot(11, rand.nextInt(1000).toDouble()),
      FlSpot(12, rand.nextInt(1000).toDouble()),
      FlSpot(13, rand.nextInt(1000).toDouble()),
      FlSpot(14, rand.nextInt(1000).toDouble()),
      FlSpot(15, rand.nextInt(1000).toDouble()),
      FlSpot(16, rand.nextInt(1000).toDouble()),
      FlSpot(17, rand.nextInt(1000).toDouble()),
      FlSpot(18, rand.nextInt(1000).toDouble()),
      FlSpot(19, rand.nextInt(1000).toDouble()),
      FlSpot(20, rand.nextInt(1000).toDouble()),
      FlSpot(21, rand.nextInt(1000).toDouble()),
      FlSpot(22, rand.nextInt(1000).toDouble()),
      FlSpot(23, rand.nextInt(1000).toDouble()),
      FlSpot(24, rand.nextInt(1000).toDouble()),
      FlSpot(25, rand.nextInt(1000).toDouble()),
      FlSpot(26, rand.nextInt(1000).toDouble()),
      FlSpot(27, rand.nextInt(1000).toDouble()),
      FlSpot(28, rand.nextInt(1000).toDouble()),
      FlSpot(29, rand.nextInt(1000).toDouble()),
      FlSpot(30, rand.nextInt(1000).toDouble()),
    ];
  }
}
