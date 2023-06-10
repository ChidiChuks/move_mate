import 'package:flutter/material.dart';
import 'package:move_mate/models/sending.dart';

class CalculateToggle extends StatefulWidget {
  const CalculateToggle({super.key});

  @override
  State<CalculateToggle> createState() => _CalculateToggleState();
}

class _CalculateToggleState extends State<CalculateToggle> {
  List<bool> isSelected = [false, false, false, false];

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
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: const Row(
                children: [
                  // Icon(Icons.assignment_turned_in_outlined),
                  Text('Documents')
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const Row(
              children: [
                // Icon(Icons.assignment_turned_in_outlined),
                Text('Glass')
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const Row(
              children: [
                // Icon(Icons.assignment_turned_in_outlined),
                Text('Liquid')
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const Row(
              children: [
                // Icon(Icons.assignment_turned_in_outlined),
                Text('Food')
              ],
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
