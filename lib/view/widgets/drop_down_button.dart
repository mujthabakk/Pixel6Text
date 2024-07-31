import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatelessWidget {
  const DropdownButtonWidget({
    super.key,
    required this.width,
    required this.height,
    required this.value,
    required this.text,
    required this.items,
    required this.onChanged,
  });

  final double width; // Width of the dropdown container
  final double height; // Height of the dropdown container
  final String? value; // Current selected value
  final String text; // Placeholder text
  final List<String> items; // List of dropdown items
  final ValueChanged<String?> onChanged; // Callback function when value changes

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: 8), // Horizontal margin for spacing
      padding: const EdgeInsets.symmetric(horizontal: 12), // Padding inside the container
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), // Rounded corners
        border: Border.all(width: 2, color: Colors.black12), // Border style
      ),
      child: DropdownButton<String>(
        hint: Text(value ?? text), // Display the selected value or placeholder text
        value: value, // Bind the current value
        icon: const Icon(Icons.arrow_drop_down_outlined), // Dropdown icon
        iconSize: 24, // Size of the dropdown icon
        elevation: 16, // Elevation for the dropdown menu
        underline: const SizedBox(), // No underline for the dropdown
        onChanged: onChanged, // Trigger callback when value changes
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value, // Value of the dropdown item
            child: Text(value), // Display text of the dropdown item
          );
        }).toList(), // Convert items list to DropdownMenuItem list
        dropdownColor: Colors.white, // Background color of the dropdown menu
        style: const TextStyle(color: Colors.black), // Text style of dropdown items
        isExpanded: true, // Expand dropdown to fill available width
      ),
    );
  }
}
