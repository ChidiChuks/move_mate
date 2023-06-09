import 'package:flutter/material.dart';
import 'package:move_mate/constants/color.dart';
import 'package:move_mate/screens/calculate/calculate_screen.dart';
import 'package:move_mate/screens/profile/profile_screen.dart';

import '../../widgets/search_textfield.dart';
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
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120.0,
        // backgroundColor: Theme.of(context).primaryColor,
        flexibleSpace: Container(
          color: primaryColor,
          child: Column(
            children: [
              Container(
                // padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                  left: 10.0,
                  right: 10.0,
                ),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // First Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // profile image
                        Container(
                          margin: const EdgeInsets.only(right: 5.0, left: 5.0),
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Image.asset(
                            "assets/profile.png",
                          ),
                        ),
                        // Column for two objects
                        const Align(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // First Row
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.arrow_outward_outlined,
                                    color: Color(0xFFCCC8C8),
                                    size: 15.0,
                                  ),
                                  Text(
                                    "Your location",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFFCCC8C8),
                                    ),
                                  ),
                                ],
                              ),
                              // Second Row
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Wertheimer, Illinois",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down_sharp,
                                    color: Colors.grey,
                                    size: 15.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Bell icon
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Icon(
                        Icons.notifications_none_outlined,
                        color: primaryColor,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                margin: const EdgeInsets.only(
                  top: 5.0,
                  bottom: 5.0,
                  left: 10.0,
                  right: 10.0,
                ),
                child: const SearchTextField(),
              ),
            ],
          ),
        ),
      ),
      // Body content
      body: kTabPages[_currentTabIndex],

      // Bottom Navigation
      bottomNavigationBar: bottomNavBar,
    );
  }
}
