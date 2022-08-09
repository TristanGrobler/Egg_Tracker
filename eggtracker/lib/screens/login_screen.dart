import 'package:eggtracker/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../constants/pal.dart';
import '../constants/str.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pal.primary1,
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              Str.logoPath,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Pal.primary2.withOpacity(0.2),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: '#',
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Password',
                      ),
                    ),
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Pal.primary2),
                      elevation: MaterialStateProperty.all(5.0),
                      surfaceTintColor: MaterialStateProperty.all(Colors.black),
                    ),
                    child: Icon(
                      Icons.chevron_right,
                      color: Pal.accent1,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              Str.footer,
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
