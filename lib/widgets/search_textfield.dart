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
          color: Colors.grey,
          size: 26,
        ),
        suffixIcon: const Icon(
          Icons.scatter_plot_outlined,
          color: secondaryColor,
          size: 26,
        ),
        // Helper Text: Search for your parcel
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: "Enter the receipt number ...",
        labelStyle: const TextStyle(color: subtitleColor),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        isDense: true,
      ),
    );
  }
}
