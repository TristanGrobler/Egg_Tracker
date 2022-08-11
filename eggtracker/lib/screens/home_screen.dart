import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:eggtracker/constants/pal.dart';
import 'package:eggtracker/logic/fake_data.dart';
import 'package:eggtracker/screens/house%20report%20screen/house_report_screen.dart';
import 'package:eggtracker/screens/main%20report%20screen/main_report_screen.dart';
import 'package:flutter/material.dart';

import '../constants/str.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController page = PageController();

  @override
  Widget build(BuildContext context) {
    List<SideMenuItem> items = [
      SideMenuItem(
        priority: 0,
        title: 'Report',
        onTap: () => page.jumpToPage(0),
        icon: Icon(Icons.auto_graph_outlined),
      ),
      SideMenuItem(
        priority: 1,
        title: 'One',
        onTap: () async {
          page.jumpToPage(1);

          FakeData.refresh();
        },
        icon: Icon(Icons.home_filled),
        badgeColor: Colors.white12,
        badgeContent: Text(
          '1',
          style: TextStyle(color: Colors.white),
        ),
      ),
      SideMenuItem(
        priority: 2,
        title: 'Two',
        onTap: () async {
          page.jumpToPage(2);
          FakeData.refresh();
        },
        icon: Icon(Icons.home_filled),
        badgeColor: Colors.white12,
        badgeContent: Text(
          '2',
          style: TextStyle(color: Colors.white),
        ),
      ),
      SideMenuItem(
        priority: 3,
        title: 'Three',
        onTap: () {
          FakeData.refresh();
          page.jumpToPage(3);
        },
        icon: Icon(Icons.home_filled),
        badgeColor: Colors.white12,
        badgeContent: Text(
          '3',
          style: TextStyle(color: Colors.white),
        ),
      ),
      SideMenuItem(
        priority: 4,
        title: 'Four',
        onTap: () {
          FakeData.refresh();
          page.jumpToPage(4);
        },
        icon: Icon(Icons.home_filled),
        badgeColor: Colors.white12,
        badgeContent: Text(
          '4',
          style: TextStyle(color: Colors.white),
        ),
      ),
      SideMenuItem(
        priority: 5,
        title: 'Five',
        onTap: () {
          FakeData.refresh();
          page.jumpToPage(5);
        },
        icon: Icon(Icons.home_filled),
        badgeColor: Colors.white12,
        badgeContent: Text(
          '5',
          style: TextStyle(color: Colors.white),
        ),
      ),
      SideMenuItem(
        priority: 6,
        title: 'Six',
        onTap: () {
          FakeData.refresh();
          page.jumpToPage(6);
        },
        icon: Icon(Icons.home_filled),
        badgeColor: Colors.white12,
        badgeContent: Text(
          '6',
          style: TextStyle(color: Colors.white),
        ),
      ),
      SideMenuItem(
        priority: 7,
        title: 'Seven',
        onTap: () {
          FakeData.refresh();
          page.jumpToPage(7);
        },
        icon: Icon(Icons.home_filled),
        badgeColor: Colors.white12,
        badgeContent: Text(
          '7',
          style: TextStyle(color: Colors.white),
        ),
      ),
      SideMenuItem(
        priority: 8,
        title: 'Eight',
        onTap: () {
          FakeData.refresh();
          page.jumpToPage(8);
        },
        icon: Icon(Icons.home_filled),
        badgeColor: Colors.white12,
        badgeContent: Text(
          '8',
          style: TextStyle(color: Colors.white),
        ),
      ),
      SideMenuItem(
        priority: 9,
        title: 'Nine',
        onTap: () {
          FakeData.refresh();
          page.jumpToPage(9);
        },
        icon: Icon(Icons.home_filled),
        badgeColor: Colors.white12,
        badgeContent: Text(
          '9',
          style: TextStyle(color: Colors.white),
        ),
      ),
      SideMenuItem(
        priority: 10,
        title: 'Ten',
        onTap: () {
          FakeData.refresh();
          page.jumpToPage(10);
        },
        icon: Icon(Icons.home_filled),
        badgeColor: Colors.white12,
        badgeContent: Text(
          '10',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ];

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            controller: page,
            title: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(Str.logoPath),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 30, 5, 50),
                )
              ],
            ),
            footer: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Str.footer,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            // Notify when display mode changed
            onDisplayModeChanged: (mode) {
              print(mode);
            },
            style: SideMenuStyle(
              openSideMenuWidth: 170,
              backgroundColor: Pal.primary2.withOpacity(0.2),
              displayMode: SideMenuDisplayMode.auto,
              hoverColor: Pal.accent1.withOpacity(0.1),
              selectedColor: Pal.accent1.withOpacity(0.8),
              selectedTitleTextStyle: const TextStyle(color: Colors.white),
              selectedIconColor: Colors.white,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              // backgroundColor: Colors.blueGrey[700]
            ),
            // List of SideMenuItem to show them on SideMenu
            items: items,
          ),
          Expanded(
            child: PageView(
              controller: page,
              children: [
                MainReportScreen(),
                HouseReportScreen(house: 1),
                HouseReportScreen(house: 2),
                HouseReportScreen(house: 3),
                HouseReportScreen(house: 4),
                HouseReportScreen(house: 5),
                HouseReportScreen(house: 6),
                HouseReportScreen(house: 7),
                HouseReportScreen(house: 8),
                HouseReportScreen(house: 9),
                HouseReportScreen(house: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
