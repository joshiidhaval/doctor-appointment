import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'Home_Screen.dart';
import 'Schedule_Screen.dart';
import 'Setting_page.dart';

import 'availabel_doctor.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final _screen = [
    HomeScreen(),
    AvailableDoctor(
      title: 'Availabel Doctor',
    ),
    ScheduleScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screen[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.cyanAccent.withOpacity(0.2),
        buttonBackgroundColor: Colors.transparent,
        height: 50,
        index: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: <Widget>[
          Icon(Icons.home_outlined, size: 30),
          Icon(CupertinoIcons.person_2, size: 30),
          Icon(Icons.calendar_month_outlined, size: 30),
          Icon(Icons.settings_outlined, size: 30),
        ],
      ),
    );
  }
}
