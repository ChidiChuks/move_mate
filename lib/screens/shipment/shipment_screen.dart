import 'package:flutter/material.dart';
import 'package:move_mate/screens/shipment/in_progress.dart';
import 'package:move_mate/screens/shipment/loading.dart';
import 'package:move_mate/screens/shipment/pending.dart';

import '../../constants/color.dart';

class ShipmentScreen extends StatefulWidget {
  const ShipmentScreen({super.key});

  @override
  State<ShipmentScreen> createState() => _ShipmentScreenState();
}

class _ShipmentScreenState extends State<ShipmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        flexibleSpace: Container(
          color: primaryColor,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 13,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Center(
                        child: Text(
                          "Shipment history",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "All",
                              style: TextStyle(
                                color: Colors.white24,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: Text(
                                "12",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Completed",
                              style: TextStyle(
                                color: Colors.white24,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: Text(
                                "5",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "In Progress",
                              style: TextStyle(
                                color: Colors.white24,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: Text(
                                "3",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Pending",
                              style: TextStyle(
                                color: Colors.white24,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: Text(
                                "3",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Cancelled",
                              style: TextStyle(
                                color: Colors.white24,
                                fontWeight: FontWeight.w100,
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
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Shipments",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // First Container
                    InProgress(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Pending(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Loading(),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // First Container
                    InProgress(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Pending(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Loading(),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // First Container
                    InProgress(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Pending(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Loading(),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // First Container
                    InProgress(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Pending(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Loading(),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    // First Container
                    InProgress(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Pending(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Loading(),
                    SizedBox(
                      height: 10.0,
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
