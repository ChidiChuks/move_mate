import 'package:flutter/material.dart';
import 'package:move_mate/models/sending.dart';

class CalculateToggleTwo extends StatefulWidget {
  const CalculateToggleTwo({super.key});

  @override
  State<CalculateToggleTwo> createState() => _CalculateToggleTwoState();
}

class _CalculateToggleTwoState extends State<CalculateToggleTwo> {
  List<bool> isSelected = [false, false, false];

  // late final Sending sent;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ToggleButtons(
        isSelected: isSelected,
        selectedColor: Colors.white,
        color: Colors.black,
        fillColor: Colors.black87,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: const Row(
                children: [
                  // Icon(Icons.assignment_turned_in_outlined),
                  Text('Electronic')
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: const Row(
                children: [
                  // Icon(Icons.assignment_turned_in_outlined),
                  Text('Product')
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: const Row(
                children: [
                  // Icon(Icons.assignment_turned_in_outlined),
                  Text('Others')
                ],
              ),
            ),
          ),
        ],
        onPressed: (int newIndex) {
          setState(() {
            for (int index = 0; index < isSelected.length; index++) {
              if (index == newIndex) {
                isSelected[index] = !isSelected[index];
              } else {
                isSelected[index] = false;
              }
            }
          });
        },
      ),
    );
  }
}
