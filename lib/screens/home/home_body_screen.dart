import 'package:flutter/material.dart';
import 'package:move_mate/constants/color.dart';
import 'package:move_mate/constants/size.dart';
import 'package:move_mate/screens/calculate/calculate_screen.dart';
import 'package:move_mate/screens/search/search_screen.dart';

import '../../models/category.dart';

class HomeBodyScreen extends StatefulWidget {
  const HomeBodyScreen({super.key});

  @override
  State<HomeBodyScreen> createState() => _HomeBodyScreenState();
}

class _HomeBodyScreenState extends State<HomeBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Tracking",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    // First container
                    Container(
                      // margin: const EdgeInsets.all(40.0),
                      height: 263.0,
                      width: 359.0,
                      // color: Colors.white,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 3.0, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 5  horizontally
                              1.0, // Move to bottom 5 Vertically
                            ),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            // First Container
                            Container(
                              margin: const EdgeInsets.all(8.0),
                              // First Container Row
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Two Texts
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // First Text
                                      Text(
                                        "Shipment Number",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      // Second Text
                                      Text(
                                        "NEJ20089934122231",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Image
                                  SizedBox(
                                    height: 40.0,
                                    width: 40.0,
                                    child: Image.asset("assets/small_car.png"),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Divider(color: Colors.black26),
                            ),
                            // Second Container
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Container One
                                  Row(
                                    children: [
                                      // Image Container
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 25,
                                          width: 25,
                                          child: Image.asset("assets/send.png"),
                                        ),
                                      ),
                                      // Column for Two texts
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // Two Texts Container
                                          Text(
                                            "Sender",
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "Atlanta, 5243",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // Container Two
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Text
                                      Text(
                                        "Time",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      // Second Row
                                      Row(
                                        children: [
                                          // Circle
                                          Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: Icon(
                                              Icons.circle,
                                              size: 10,
                                              color: Colors.green,
                                            ),
                                          ),
                                          // Text
                                          Text(
                                            "2 days - 3 days",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            // Third Container
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Container One
                                  Row(
                                    children: [
                                      // Image Container
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 25,
                                          width: 25,
                                          child:
                                              Image.asset("assets/receive.png"),
                                        ),
                                      ),
                                      // Column for Two texts
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // Two Texts Container
                                          Text(
                                            "Receiver",
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            "Chicago, 6342",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  // Container Two
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Text

                                      // Second Row
                                      Text(
                                        "Status",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      // Text
                                      Text(
                                        "Waiting to collect",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Divider(color: Colors.black26),
                            ),
                            // Fourth Container
                            const Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Circle
                                  Icon(
                                    Icons.add,
                                    size: 15,
                                    color: secondaryColor,
                                  ),
                                  // Text
                                  Text(
                                    "Add Stop",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: secondaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Available vehicles",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    // Tile containers
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            // margin: const EdgeInsets.all(40.0),
                            height: 189.0,
                            width: 139.0,
                            // color: Colors.white,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 15.0, // soften the shadow
                                  spreadRadius: 3.0, //extend the shadow
                                  offset: Offset(
                                    1.0, // Move to right 1  horizontally
                                    1.0, // Move to bottom 1 Vertically
                                  ),
                                ),
                              ],
                            ),
                            // Induce the category list from the model
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                    bottom: 0,
                                    top: 8.0,
                                  ),
                                  child: Text(
                                    "Ocean freight",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                    top: 0,
                                    bottom: 8.0,
                                  ),
                                  child: Text(
                                    "International",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Image.asset(
                                    "assets/ship.png",
                                    height: categoryCardImageSize,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Container(
                            // margin: const EdgeInsets.all(40.0),
                            height: 189.0,
                            width: 139.0,
                            // color: Colors.white,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 15.0, // soften the shadow
                                  spreadRadius: 3.0, //extend the shadow
                                  offset: Offset(
                                    1.0, // Move to right 1  horizontally
                                    1.0, // Move to bottom 1 Vertically
                                  ),
                                ),
                              ],
                            ),
                            // Induce the category list from the model
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                    bottom: 0,
                                    top: 8.0,
                                  ),
                                  child: Text(
                                    "Cargo freight",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                    top: 0,
                                    bottom: 8.0,
                                  ),
                                  child: Text(
                                    "Reliable",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(
                                    "assets/van.png",
                                    height: categoryCardImageSize,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Container(
                            // margin: const EdgeInsets.all(40.0),
                            height: 189.0,
                            width: 139.0,
                            // color: Colors.white,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 15.0, // soften the shadow
                                  spreadRadius: 3.0, //extend the shadow
                                  offset: Offset(
                                    1.0, // Move to right 1  horizontally
                                    1.0, // Move to bottom 1 Vertically
                                  ),
                                ),
                              ],
                            ),
                            // Induce the category list from the model
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                    bottom: 0,
                                    top: 8.0,
                                  ),
                                  child: Text(
                                    "Air freight",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0,
                                    top: 0,
                                    bottom: 8.0,
                                  ),
                                  child: Text(
                                    "International",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Image.asset(
                                    "assets/plane.png",
                                    height: categoryCardImageSize,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
