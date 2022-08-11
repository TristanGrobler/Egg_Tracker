import 'package:flutter/material.dart';

import '../../../constants/pal.dart';
import '../../../constants/sty.dart';

class HouseMortalityGauge extends StatelessWidget {
  const HouseMortalityGauge({Key? key}) : super(key: key);

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
            Text(
              '30 Day Trend:',
              style: Sty.header1TS,
              textAlign: TextAlign.center,
            ),
            CircleAvatar(
              backgroundColor: Pal.primary2.withOpacity(0.5),
              radius: 30,
              child: Transform.rotate(
                angle: -45,
                child: Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              '15 Day Trend',
              textAlign: TextAlign.center,
              style: Sty.header1TS,
            ),
            CircleAvatar(
              backgroundColor: Pal.primary2.withOpacity(0.5),
              radius: 30,
              child: Transform.rotate(
                angle: 0,
                child: Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Colors.grey,
                  size: 40,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              '1 Day Trend',
              style: Sty.header1TS,
              textAlign: TextAlign.center,
            ),
            CircleAvatar(
              backgroundColor: Pal.primary2.withOpacity(0.5),
              radius: 30,
              child: Transform.rotate(
                angle: 45,
                child: Icon(
                  Icons.arrow_right_alt_outlined,
                  color: Colors.green,
                  size: 40,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
