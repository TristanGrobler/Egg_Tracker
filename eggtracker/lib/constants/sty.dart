import 'package:eggtracker/constants/pal.dart';
import 'package:flutter/material.dart';

class Sty {
  static TextStyle header1TS = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Pal.text1,
  );
  static TextStyle header2TS = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Pal.text1,
  );
  static TextStyle bodyTS = TextStyle(
    fontSize: 20,
    color: Pal.text1,
  );
  static TextStyle bodySoft1TS = TextStyle(
    fontSize: 20,
    color: Pal.text1.withOpacity(0.8),
  );
  static TextStyle bodySoft2TS = TextStyle(
    fontSize: 12,
    color: Pal.text1.withOpacity(0.8),
  );
}
