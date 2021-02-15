import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../controllers/spoonacular_controller.dart';
import '../../models/recipe/recipe.dart';
import '../../screens/recipe_screen.dart';
import '../../widgets/big_recipe_widget.dart';
import '../../widgets/recipe_widget.dart';

class RecipesWidget extends StatelessWidget {
  final List<Recipe> recipes;
  final bool isGrid;
  final bool isBig;

  RecipesWidget({
    this.recipes,
    this.isGrid = false,
    this.isBig = false,
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
                  _spoonacularController.getRecipeInformation(recipe.id);
                  Navigator.of(context).pushNamed(RecipeScreen.routeName);
                },
              );
            },
          );

        if (isBig)
          return Container(
            height: 420.0,
            child: ListView.builder(
              clipBehavior: Clip.none,
              itemCount: recipes.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final Recipe recipe = recipes[index];

                return Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: BigRecipeWidget(
                    mealType: recipe.dishTypes[0],
                    image: recipe.image,
                    score: recipe.spoonacularScore / 20 ?? 0.0,
                    title: recipe.title.length > 20
                        ? '${recipe.title.substring(0, 20)}...'
                        : recipe.title,
                    onTap: () {
                      _spoonacularController.getRecipeInformation(recipe.id);
                      Navigator.of(context).pushNamed(RecipeScreen.routeName);
                    },
                  ),
                );
              },
            ),
          );

        return Container(
          height: 200.0,
          child: ListView.builder(
            clipBehavior: Clip.none,
            itemCount: recipes.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
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
