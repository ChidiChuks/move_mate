import 'package:flutter/material.dart';

import '../constants/color.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: primaryColor,
          size: 15,
        ),
        suffixIcon: Container(
          width: 20,
          height: 20,
          margin: const EdgeInsets.all(5),
          // padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(40),
          ),
          child: const Icon(
            Icons.wallpaper_sharp,
            color: Colors.white,
            size: 15,
          ),
        ),
        // Helper Text: Search for your parcel
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: "Enter the receipt number ...",
        labelStyle: const TextStyle(
          color: Color(0xFFA1A1A1),
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(width: 1, color: Colors.white),
        ),
        isDense: true,
      ),
    );
  }
}
