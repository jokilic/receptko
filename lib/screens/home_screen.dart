import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../controllers/spoonacular_controller.dart';
import '../models/models.dart';
import '../widgets/home_screen/overview_recipe.dart';
import '../widgets/home_screen/recipe_search.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    final SpoonacularController _spoonacularController =
        Get.put(SpoonacularController());

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
                RecipeSearch(),
                SizedBox(height: 20.0),
                Text(
                  'Random Recipes',
                  style: MyTextStyles.headline2Text,
                ),
                SizedBox(height: 74.0),
                Obx(
                  () => GridView.builder(
                    clipBehavior: Clip.none,
                    itemCount: _spoonacularController.randomRecipes.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 80.0,
                      crossAxisSpacing: 20.0,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final Recipe recipe =
                          _spoonacularController.randomRecipes[index];

                      return OverviewRecipe(
                        color: MyColors.randomColor,
                        image: recipe.image,
                        score: recipe.spoonacularScore / 20 ?? 0.0,
                        title: recipe.title.length > 30
                            ? '${recipe.title.substring(0, 30)}...'
                            : recipe.title ?? 'No title',
                        onTap: () => print('Pressed: ${recipe.title}'),
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
