import 'package:flutter/material.dart';
import 'package:move_mate/screens/calculate/calculate_toggle.dart';
import 'package:move_mate/screens/success/success_screen.dart';

import '../../constants/color.dart';
import 'calculate_toggle2.dart';

class CalculateScreen extends StatefulWidget {
  const CalculateScreen({super.key});

  @override
  State<CalculateScreen> createState() => _CalculateScreenState();
}

class _CalculateScreenState extends State<CalculateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        flexibleSpace: Container(
          color: primaryColor,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
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
                      "Calculate",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                )
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Destination",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    // First Container
                    Container(
                      // margin: const EdgeInsets.all(40.0),
                      height: 170.0,
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
                      // Three TextBox
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // TextField One
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.arrow_circle_up_outlined,
                                  color: Color(0xFFA1A1A1),
                                  size: 20,
                                ),
                                // Helper Text: Search for your parcel
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                prefixText: "|  ",
                                labelText: "|  Sender location",
                                labelStyle: const TextStyle(
                                  color: Color(0xFFA1A1A1),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w100,
                                ),
                                filled: true,
                                fillColor: const Color(0xFFF9F5F5),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.white),
                                ),
                                isDense: true,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            // TextField Two
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.arrow_circle_down_outlined,
                                  color: Color(0xFFA1A1A1),
                                  size: 20,
                                ),
                                // Helper Text: Search for your parcel
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                prefixText: "|  ",
                                labelText: "|  Receiver location",
                                labelStyle: const TextStyle(
                                  color: Color(0xFFA1A1A1),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w100,
                                ),
                                filled: true,
                                fillColor: const Color(0xFFF9F5F5),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.white),
                                ),
                                isDense: true,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            // TextField Three
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.balance_outlined,
                                  color: Color(0xFFA1A1A1),
                                  size: 20,
                                ),
                                // Helper Text: Search for your parcel
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                prefixText: "|  ",
                                labelText: "|  Approx Weight",
                                labelStyle: const TextStyle(
                                  color: Color(0xFFA1A1A1),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w100,
                                ),
                                filled: true,
                                fillColor: const Color(0xFFF9F5F5),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.white),
                                ),
                                isDense: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    // Second Text
                    const Text(
                      "Packaging",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    const Text(
                      "What are you sending?",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black45,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    // Second Container
                    Container(
                      // margin: const EdgeInsets.all(40.0),
                      height: 70.0,
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
                      // Three TextBox
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // TextField One
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.cases_rounded,
                                  color: Color(0xFF30402B),
                                  size: 20,
                                ),
                                suffixIcon: const Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: Color(0xFFA1A1A1),
                                  size: 20,
                                ),
                                // Helper Text: Search for your parcel
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                prefixText: "|  ",
                                labelText: "|  Box",
                                labelStyle: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w100,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      width: 1, color: Colors.white),
                                ),
                                isDense: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    // Third text
                    const Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    const Text(
                      "What are you sending?",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black45,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    // Category text
                    const CalculateToggle(),
                    const CalculateToggleTwo(),
                    const SizedBox(
                      height: 30.0,
                    ),
                    // Fourth Content
                    SizedBox(
                      width: double.infinity / 2,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () => _navigateToNextScreen(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: secondaryColor,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                        child: const Text("Calculate"),
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

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SuccessScreen()));
  }
}
