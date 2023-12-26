import 'package:flutter/material.dart';

// Updated color palette
Color primary = const Color(0xFF4A90E2); // Updated primary color
Color accentColor = const Color(0xFFF37B67); // Accent color

class Style {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFF5F5F5); // Lighter background
  static Color textColor = const Color(0xFF333333); // Darker text color
  static Color orangeColor = Colors.deepOrange; // Using the accent color for orange
  static TextStyle textStyle = TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle1 = TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle2 = TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headlineStyle3 = TextStyle(fontSize: 17,  fontWeight: FontWeight.w500);
  static TextStyle headlineStyle4 = TextStyle(fontSize: 14, color: Colors.grey.shade600, fontWeight: FontWeight.w500);
}
