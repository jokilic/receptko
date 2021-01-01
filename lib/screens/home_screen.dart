import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../controllers/spoonacular_controller.dart';
import '../models/models.dart';
import '../widgets/home_screen/overview_recipe.dart';
import '../widgets/home_screen/recipe_search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SpoonacularController _spoonacularController =
        Get.put(SpoonacularController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 36.0),
                RecipeSearch(),
                SizedBox(height: 20.0),
                Container(
                  margin: EdgeInsets.only(bottom: 36.0),
                  child: Text(
                    'Random Recipes',
                    style: MyTextStyles.headline2Text,
                  ),
                ),
                Obx(
                  () => GridView.builder(
                    itemCount: _spoonacularController.randomRecipes.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 80.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 0.9,
                    ),
                    itemBuilder: (context, index) {
                      final Recipe recipe =
                          _spoonacularController.randomRecipes[index];

                      return OverviewRecipe(
                        color: MyColors.randomColor,
                        image: recipe.image,
                        score: recipe.spoonacularScore / 20,
                        title: recipe.title.length > 24
                            ? '${recipe.title.substring(0, 24)}...'
                            : recipe.title,
                        onTap: () => print('Pressed: ${recipe.title}'),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
