import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../controllers/spoonacular_controller.dart';
import '../screens/results_screen.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SpoonacularController _spoonacularController =
        Get.find<SpoonacularController>();

    return TextField(
      onSubmitted: (value) {
        _spoonacularController.recipeSearchResult = null;
        _spoonacularController.searchRecipes(value);
        Navigator.pushNamed(context, ResultsScreen.routeName);
      },
      onChanged: (value) => _spoonacularController.searchQuery = value,
      textCapitalization: TextCapitalization.sentences,
      style: TextStyle(
        color: MyColors.textColor,
        fontWeight: FontWeight.w600,
      ),
      cursorColor: MyColors.textColor,
      decoration: InputDecoration(
        prefixIcon: Image.asset(
          MyIcons.search,
          width: 30.0,
          color: MyColors.textColor,
        ),
        hintText: 'Search for a meal...',
        hintStyle: TextStyle(color: MyColors.textColor.withOpacity(0.4)),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.backgroundColor),
          borderRadius: BorderRadius.circular(16.0),
        ),
        filled: true,
        fillColor: MyColors.backgroundColor,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.backgroundColor),
          borderRadius: BorderRadius.circular(16.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.backgroundColor),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}