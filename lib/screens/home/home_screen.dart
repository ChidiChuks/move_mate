import 'package:flutter/material.dart';
import 'package:move_mate/constants/color.dart';

import '../../widgets/search_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120.0,
        // backgroundColor: Theme.of(context).primaryColor,
        flexibleSpace: Container(
          color: primaryColor,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(2.0),
                margin: const EdgeInsets.only(
                  top: 2.0,
                  bottom: 2.0,
                  left: 10.0,
                  right: 10.0,
                ),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // First Row
                    Row(
                      children: [
                        // profile image
                        Container(
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
                        Column(
                          children: [
                            Text(
                              "First Row",
                            ),
                            Text(
                              "First Row",
                            ),
                          ],
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
                  top: 2.0,
                  bottom: 2.0,
                  left: 10.0,
                  right: 10.0,
                ),
                child: const SearchTextField(),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: SearchTextField(),
      ),
    );
  }
}
