import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../controllers/spoonacular_controller.dart';
import '../screens/recipe_screen.dart';
import '../widgets/header_widget.dart';
import '../widgets/recipe_widget.dart';

class FavoritesScreen extends StatelessWidget {
  static const routeName = '/favorites-screen';

  @override
  Widget build(BuildContext context) {
    final SpoonacularController _spoonacularController =
        Get.find<SpoonacularController>();

    return Scaffold(
      backgroundColor: MyColors.bodyColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 36.0),
                HeaderWidget(title: 'Your favorite recipes'),
                SizedBox(height: 96.0),
                Obx(
                  () => GridView.builder(
                    clipBehavior: Clip.none,
                    itemCount: _spoonacularController.favoriteRecipes.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 80.0,
                      crossAxisSpacing: 20.0,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      _spoonacularController.getFavoriteRecipes();
                      final List favoriteRecipe =
                          _spoonacularController.favoriteRecipes[index];
                      print('Josip: $favoriteRecipe');

                      return Text(favoriteRecipe[1]);

                      return RecipeWidget(
                        color: MyColors.randomColor,
                        title: favoriteRecipe[1],
                        image: favoriteRecipe[2],
                        onTap: () {
                          _spoonacularController.recipeInformation = null;
                          _spoonacularController
                              .getRecipeInformation(favoriteRecipe[0]);
                          Navigator.of(context)
                              .pushNamed(RecipeScreen.routeName);
                        },
                        score: 3.1,
                      );
                    },
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
