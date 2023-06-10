import 'package:flutter/material.dart';
import 'package:move_mate/widgets/search_textfield.dart';

import '../../constants/color.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180.0,
        flexibleSpace: Container(
          margin: const EdgeInsets.all(8.0),
          color: primaryColor,
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: SearchTextField(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            // margin: const EdgeInsets.all(40.0),
            height: 300.0,
            width: double.infinity / 2,
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
            // Tracking shipment parcel
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Content Two
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  primaryColor,
                                  secondaryColor,
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              ),
                            ),
                            child: const Icon(
                              Icons.cases_rounded,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Summer linen jacket",
                              style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "#NEJ20089934122231",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(7.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 5.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Barcelona",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 12.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Paris",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Divider(color: Colors.black12),
                  ),
                  // Content Three
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  primaryColor,
                                  secondaryColor,
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              ),
                            ),
                            child: const Icon(
                              Icons.cases_rounded,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tapered-fit jeans AW",
                              style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "#NEJ35870264978659",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(7.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 5.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Colombia",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 12.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Paris",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Divider(color: Colors.black12),
                  ),
                  // Content Four
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  primaryColor,
                                  secondaryColor,
                                ],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              ),
                            ),
                            child: const Icon(
                              Icons.cases_rounded,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Macbook pro M2",
                              style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "#NE43857340857904",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(7.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 5.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Paris",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 12.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Morocco",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Divider(color: Colors.black12),
                  ),
                  // Content with lines
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
