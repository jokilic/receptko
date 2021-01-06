import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../controllers/spoonacular_controller.dart';
import '../models/models.dart';
import '../widgets/header_widget.dart';
import './recipe_screen.dart';
import '../widgets/search_widget.dart';
import '../widgets/home_screen/homescreen_recipe.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 36.0),
                HeaderWidget(title: 'What would you like to Cook?'),
                SizedBox(height: 16.0),
                SearchWidget(),
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

                      return HomeScreenRecipe(
                        color: MyColors.randomColor,
                        image: recipe.image,
                        score: recipe.spoonacularScore / 20 ?? 0.0,
                        title: recipe.title.length > 30
                            ? '${recipe.title.substring(0, 30)}...'
                            : recipe.title,
                        onTap: () {
                          // TODO: Fetch chosen recipe, set it in a variable & show RecipeScreen
                          Navigator.of(context)
                              .pushNamed(RecipeScreen.routeName);
                        },
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
