import 'package:flutter/material.dart';

class HouseReportScreen extends StatelessWidget {
  HouseReportScreen({required this.house});

  final int house;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('House ${house}'),
    );
  }
}
