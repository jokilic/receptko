import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../controllers/spoonacular_controller.dart';
import '../widgets/header_widget.dart';
import '../widgets/search_widget.dart';
import '../widgets/home_screen/recipes_widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    final SpoonacularController _spoonacularController =
        Get.put<SpoonacularController>(SpoonacularController());

    return Scaffold(
      backgroundColor: MyColors.bodyColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 36.0),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: HeaderWidget(title: 'What would you like to Cook?'),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: SearchWidget(),
                ),
                SizedBox(height: 36.0),
                Obx(
                  () => Text(
                    'Something from the ${_spoonacularController.randomCuisineName} cuisine',
                    style: MyTextStyles.headline2Text,
                  ),
                ),
                SizedBox(height: 24.0),
                RecipesWidget(
                  recipes: _spoonacularController.cuisineRecipes,
                  isBig: true,
                ),
                SizedBox(height: 24.0),
                Obx(
                  () => Text(
                    'Some ${_spoonacularController.randomMealTypeName} recipes',
                    style: MyTextStyles.headline2Text,
                  ),
                ),
                SizedBox(height: 24.0),
                RecipesWidget(
                  recipes: _spoonacularController.mealTypeRecipes,
                  isBig: true,
                ),
                SizedBox(height: 24.0),
                Text(
                  'Completely random recipes',
                  style: MyTextStyles.headline2Text,
                ),
                SizedBox(height: 74.0),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: RecipesWidget(
                    recipes: _spoonacularController.randomRecipes,
                  ),
                ),
                SizedBox(height: 24.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
