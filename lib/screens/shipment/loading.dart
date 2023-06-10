import 'package:flutter/material.dart';

import '../../constants/color.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(40.0),
      height: 120.0,
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
      // Shipment history content
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Content One
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 75.0,
                  height: 20.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF8F1F1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Icon(
                          Icons.speed_outlined,
                          size: 10.0,
                          color: Colors.blue,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          "loading",
                          style: TextStyle(
                            fontSize: 8.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Content Two
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Arriving today!",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Your delivery #NEJ20089934122231 \n from Atlanta, is arriving today!",
                          style: TextStyle(
                            fontSize: 7.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
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
                        size: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
              // Content Three
              const Row(
                children: [
                  Text(
                    "\$350 USD",
                    style: TextStyle(
                      fontSize: 8.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF320B75),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(
                      Icons.circle,
                      size: 5.0,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Sep 20, 2023",
                    style: TextStyle(
                      fontSize: 8.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
