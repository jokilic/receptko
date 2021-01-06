import 'package:flutter/material.dart';

import './colors.dart';

class MyTextStyles {
  static const TextStyle headline1Text = TextStyle(
    fontSize: 36.0,
    color: MyColors.textColor,
    fontWeight: FontWeight.w800,
    height: 1.3,
  );

  static const TextStyle headline2Text = TextStyle(
    fontSize: 26.0,
    color: MyColors.textColor,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  static const TextStyle overviewRecipeTitle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle overviewRecipeScore = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle overviewRecipePrice = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w800,
    color: MyColors.textColor,
  );

  static const TextStyle categoryTitle = TextStyle(
    fontSize: 23.0,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle resultTitle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle resultDescription = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle resultMinutes = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w800,
    color: MyColors.textColor,
  );
}
