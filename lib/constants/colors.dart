import 'package:flutter/material.dart';

class MyColors {
  static const Color headlinesColor = Color(0xFF1D1D1B);
  static const Color bodyColor = Color(0xFF8B8887);
  static const Color outlinesColor = Color(0xFFEBEBE6);
  static const Color primaryColor = Color(0xFFF07A3E);
  static const Color secondaryColor = Color(0xFF69947A);
  static const Color tertiaryColor = Color(0xFFBD4041);
  static const Color quaternaryColor = Color(0xFF4F759B);
  static const Color quinaryColor = Color(0xFF2E2C2F);
  static const Color senaryColor = Color(0xFF666A86);

  static List<Color> overviewRecipeColors = [
    primaryColor,
    secondaryColor,
    tertiaryColor,
    quaternaryColor,
    quinaryColor,
    senaryColor,
  ];

  static Color get randomColor => (overviewRecipeColors..shuffle()).first;
}
