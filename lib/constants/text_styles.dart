import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/theme_controller.dart';
import './colors.dart';

class MyTextStyles {
  static final bool _isDark = Get.find<ThemeController>().darkTheme;

  static TextStyle get headline1Text => TextStyle(
        fontSize: 32.0,
        color: _isDark ? DarkColors.textColor : LightColors.textColor,
        fontWeight: FontWeight.w800,
        height: 1.2,
      );

  static TextStyle headline2Text = TextStyle(
    fontSize: 28.0,
    color: _isDark ? DarkColors.textColor : LightColors.textColor,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  static TextStyle headline3Text = TextStyle(
    fontSize: 16.0,
    color: _isDark ? DarkColors.textColor : LightColors.textColor,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );

  static TextStyle searchText = TextStyle(
    fontSize: 22.0,
    color: _isDark ? DarkColors.textColor : LightColors.textColor,
    fontWeight: FontWeight.w500,
    fontFamily: 'VisbyRound',
  );

  static TextStyle searchDialogHeadingText = TextStyle(
    fontSize: 24.0,
    color: _isDark ? DarkColors.textColor : LightColors.textColor,
    fontWeight: FontWeight.w700,
    fontFamily: 'VisbyRound',
  );

  static TextStyle searchDialogMinuteText = TextStyle(
    fontSize: 52.0,
    color: _isDark ? DarkColors.textColor : LightColors.textColor,
    fontWeight: FontWeight.w700,
    fontFamily: 'VisbyRound',
  );

  static TextStyle searchDialogText = TextStyle(
    fontSize: 20.0,
    color: _isDark ? DarkColors.textColor : LightColors.textColor,
    fontWeight: FontWeight.w500,
    fontFamily: 'VisbyRound',
  );

  static TextStyle searchDynamicText = TextStyle(
    fontSize: 22.0,
    color: _isDark ? DarkColors.randomColor : LightColors.randomColor,
    fontWeight: FontWeight.w700,
    fontFamily: 'VisbyRound',
    height: 1.6,
  );

  static const TextStyle overviewRecipeTitle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle overviewRecipeScore = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
  );

  static TextStyle overviewRecipePrice = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
    color: _isDark ? DarkColors.textColor : LightColors.textColor,
  );

  static const TextStyle categoryTitle = TextStyle(
    fontSize: 21.0,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle resultTitle = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle resultDescription = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle resultMinutes = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w800,
    color: LightColors.backgroundColor,
  );

  static const TextStyle recipeGrid = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle recipeSummary = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  static TextStyle recipeIngredientName = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
    color: _isDark ? DarkColors.textColor : LightColors.textColor,
  );

  static TextStyle recipeIngredientAmount = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    color: _isDark ? DarkColors.textColor : LightColors.textColor,
  );

  static TextStyle recipeDirectionNumber = TextStyle(
    fontSize: 26.0,
    fontWeight: FontWeight.w800,
    color: _isDark ? DarkColors.textColor : LightColors.textColor,
  );

  static TextStyle recipeDirectionText = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: _isDark ? DarkColors.textColor : LightColors.textColor,
    height: 1.4,
  );

  static TextStyle recipeBooleanValues = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
    color: _isDark ? DarkColors.backgroundColor : LightColors.backgroundColor,
  );

  static TextStyle recipeOriginal = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
    color: _isDark ? DarkColors.backgroundColor : LightColors.backgroundColor,
  );

  static TextStyle bigRecipeWidgetTitle = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w800,
    color: _isDark ? DarkColors.textColor : LightColors.textColor,
    height: 1.0,
  );

  static const TextStyle bigRecipeWidgetSubtitle = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle bigRecipeWidgetRating = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle showMoreSummaryButton = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle errorDialogText = TextStyle(
    fontSize: 20.0,
  );
}
