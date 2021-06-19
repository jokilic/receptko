import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../controllers/spoonacular_controller.dart';
import '../controllers/theme_controller.dart';
import '../screens/results_screen.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SpoonacularController _spoonacularController = Get.find<SpoonacularController>();
    final bool _isDark = Get.find<ThemeController>().darkTheme;

    return TextField(
      onSubmitted: (String value) {
        _spoonacularController.searchRecipes(value);
        Get.toNamed(ResultsScreen.routeName);
      },
      onChanged: (String value) => _spoonacularController.searchQuery = value,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(
        color: _isDark ? DarkColors.textColor : LightColors.textColor,
        fontWeight: FontWeight.w600,
      ),
      cursorColor: _isDark ? DarkColors.textColor : LightColors.textColor,
      decoration: InputDecoration(
        prefixIcon: Image.asset(
          MyIcons.search,
          width: 30.0,
          color: _isDark ? DarkColors.textColor : LightColors.textColor,
        ),
        hintText: 'Search for a meal...',
        hintStyle: TextStyle(
          color: _isDark ? DarkColors.textColor.withOpacity(0.4) : LightColors.textColor.withOpacity(0.4),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: _isDark ? DarkColors.backgroundColor : LightColors.backgroundColor,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        filled: true,
        fillColor: _isDark ? DarkColors.backgroundColor : LightColors.backgroundColor,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: _isDark ? DarkColors.backgroundColor : LightColors.backgroundColor,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: _isDark ? DarkColors.backgroundColor : LightColors.backgroundColor,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
