import 'package:flutter/material.dart';
import 'package:move_mate/constants/color.dart';
import 'package:move_mate/screens/calculate/calculate_screen.dart';
import 'package:move_mate/screens/profile/profile_screen.dart';

import '../shipment/shipment_screen.dart';
import 'home_body_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Pages to view
    final kTabPages = <Widget>[
      // Home Page
      const HomeBodyScreen(),
      // Calculate Page
      const CalculateScreen(),
      // Shipment History Page
      const ShipmentScreen(),
      // Profile Page
      const ProfileScreen(),
    ];

    // ignore: no_leading_underscores_for_local_identifiers
    _changeTab(int index) {
      setState(() {
        _currentTabIndex = index;
      });
    }

    // bottomNavigationBarItems
    final kBottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined, size: 20), label: 'Home'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.calculate_outlined, size: 20), label: 'Calculate'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.history_outlined, size: 20), label: 'Shipment'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline, size: 20), label: 'Profile'),
    ];
    assert(kTabPages.length == kBottomNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: kBottomNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) => _changeTab(index),
    );
    return Scaffold(
      // Body content
      body: kTabPages[_currentTabIndex],

      // Bottom Navigation
      bottomNavigationBar: bottomNavBar,
    );
  }
}
