import 'package:flutter/material.dart';

class OrderitColors {
  OrderitColors._();

//App Basic Colors
  static const Color primary = Color(0xFF4B68FF);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

//Gradient Colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
        Color.fromARGB(255, 53, 116, 92),
      ]);

  //Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C7570);
  static const Color textWhite = Colors.white;
  static const Color textGreen = Color.fromARGB(255, 53, 116, 92);

  //Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color transparent = Colors.transparent;
  static const Color green = Color.fromARGB(255, 47, 103, 81);
  static const Color primaryBackground = Color(0xFFF3F5FF);
  static const Color greenBackground = Color.fromARGB(255, 53, 116, 92);

  //Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = OrderitColors.textWhite.withOpacity(0.1);

  static const Color greenContainer = Color.fromARGB(255, 53, 116, 92);
}
