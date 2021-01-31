import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../controllers/spoonacular_controller.dart';
import '../../models/recipe/recipe.dart';
import '../../screens/recipe_screen.dart';
import '../../widgets/recipe_widget.dart';

class RecipesWidget extends StatelessWidget {
  final List<Recipe> recipes;
  final bool isGrid;

  RecipesWidget({
    this.recipes,
    this.isGrid = false,
  });

  @override
  Widget build(BuildContext context) {
    final SpoonacularController _spoonacularController =
        Get.find<SpoonacularController>();

    return Obx(
      () {
        if (isGrid)
          return GridView.builder(
            clipBehavior: Clip.none,
            itemCount: recipes.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 80.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 0.85,
            ),
            itemBuilder: (BuildContext context, int index) {
              final Recipe recipe = recipes[index];

              return RecipeWidget(
                color: MyColors.randomColor,
                image: recipe.image,
                score: recipe.spoonacularScore / 20 ?? 0.0,
                title: recipe.title.length > 24
                    ? '${recipe.title.substring(0, 24)}...'
                    : recipe.title,
                onTap: () {
                  _spoonacularController.recipeInformation = null;
                  _spoonacularController.getRecipeInformation(recipe.id);
                  Navigator.of(context).pushNamed(RecipeScreen.routeName);
                },
              );
            },
          );

        return Container(
          height: 180.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            shrinkWrap: true,
            itemCount: recipes.length,
            itemBuilder: (BuildContext context, int index) {
              final Recipe recipe = recipes[index];

              return Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: RecipeWidget(
                  color: MyColors.randomColor,
                  image: recipe.image,
                  score: recipe.spoonacularScore / 20 ?? 0.0,
                  title: recipe.title.length > 24
                      ? '${recipe.title.substring(0, 24)}...'
                      : recipe.title,
                  onTap: () {
                    _spoonacularController.recipeInformation = null;
                    _spoonacularController.getRecipeInformation(recipe.id);
                    Navigator.of(context).pushNamed(RecipeScreen.routeName);
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
