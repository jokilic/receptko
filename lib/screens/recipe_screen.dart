import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:receptko/constants/images.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/text_styles.dart';
import '../controllers/spoonacular_controller.dart';
import '../models/recipe/recipe.dart';
import '../widgets/header_widget.dart';
import '../widgets/recipe_screen/ingredient_widget.dart';
import '../widgets/recipe_screen/original_recipe_button.dart';
import '../widgets/recipe_screen/recipe_boolean_values_widget.dart';
import '../widgets/recipe_screen/recipe_grid_widget.dart';
import '../widgets/recipe_screen/recipe_instruction_widget.dart';

class RecipeScreen extends StatelessWidget {
  static const routeName = '/recipe-screen';

  @override
  Widget build(BuildContext context) {
    final SpoonacularController _spoonacularController =
        Get.find<SpoonacularController>();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Obx(
          () {
            if (_spoonacularController.recipeInformation == null)
              return Column(
                children: [
                  SizedBox(height: 164.0),
                  HeaderWidget(
                    onlyChef: true,
                  ),
                  SizedBox(height: 36.0),
                  Text(
                    'Just a sec...',
                    style: MyTextStyles.headline2Text,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 36.0),
                  SpinKitFoldingCube(
                    color: MyColors.randomColor,
                    size: 36.0,
                  ),
                ],
              );

            final Recipe recipe = _spoonacularController.recipeInformation;

            return Column(
              children: [
                Stack(
                  children: [
                    Transform.scale(
                      scale: 1.2,
                      child: recipe.image == null
                          ? Image.asset(
                              MyImages.foodPlaceholder,
                              width: double.infinity,
                              height: size.height * 0.5,
                              fit: BoxFit.cover,
                            )
                          : Image.network(
                              recipe.image,
                              width: double.infinity,
                              height: size.height * 0.5,
                              fit: BoxFit.cover,
                            ),
                    ),
                    Positioned(
                      right: 12.0,
                      top: 32.0,
                      child: GestureDetector(
                        onTap: () {
                          _spoonacularController.setFavoriteRecipe(recipe);
                        },
                        child: Image.asset(
                          MyIcons.favoriteOutline,
                          width: 58.0,
                          height: 58.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(44.0),
                    color: MyColors.bodyColor,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 36.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recipe.title,
                          style: MyTextStyles.headline1Text,
                        ),
                        SizedBox(height: 24.0),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              RecipeGridWidget(
                                color: MyColors.greenRecipeColor,
                                icon: MyIcons.clock,
                                text: '${recipe.readyInMinutes} MIN',
                              ),
                              SizedBox(width: 16.0),
                              RecipeGridWidget(
                                color: MyColors.yellowRecipeColor,
                                icon: MyIcons.popular,
                                text: '${recipe.spoonacularScore / 20} / 5',
                              ),
                              SizedBox(width: 16.0),
                              RecipeGridWidget(
                                color: MyColors.blueRecipeColor,
                                icon: MyIcons.money,
                                text:
                                    '\$${recipe.pricePerServing.round() / 100}',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'Summary',
                          style: MyTextStyles.headline2Text,
                        ),
                        SizedBox(height: 16.0),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              if (recipe.cheap)
                                RecipeBooleanValuesWidget(
                                  color: MyColors.orangeColor,
                                  icon: MyIcons.money,
                                  text: 'Cheap',
                                ),
                              if (recipe.vegan)
                                RecipeBooleanValuesWidget(
                                  color: MyColors.greenColor,
                                  icon: MyIcons.vegan,
                                  text: 'Vegan',
                                ),
                              if (recipe.veryHealthy)
                                RecipeBooleanValuesWidget(
                                  color: MyColors.redColor,
                                  icon: MyIcons.healthy,
                                  text: 'Healthy',
                                ),
                              if (recipe.veryPopular)
                                RecipeBooleanValuesWidget(
                                  color: MyColors.yellowRecipeColor,
                                  icon: MyIcons.popular,
                                  text: 'Popular',
                                ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          _spoonacularController.cleanSummary(recipe.summary),
                          style: MyTextStyles.recipeSummary,
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'Ingredients',
                          style: MyTextStyles.headline2Text,
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          height: 250.0,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: recipe.extendedIngredients.length,
                            itemBuilder: (BuildContext context, int index) {
                              final ExtendedIngredients ingredient =
                                  recipe.extendedIngredients[index];

                              return IngredientWidget(
                                image: _spoonacularController
                                    .getIngredientImage(ingredient.image),
                                title: ingredient.name,
                                amount: ingredient.amount,
                                unit: ingredient.unit,
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          'Directions',
                          style: MyTextStyles.headline2Text,
                        ),
                        SizedBox(height: 16.0),
                        // TODO: analyzedInstructions
                        ListView.builder(
                          itemCount:
                              recipe.analyzedInstructions[0]['steps'].length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            final dynamic instruction =
                                recipe.analyzedInstructions[0]['steps'][index];

                            return RecipeInstructionWidget(
                              number: instruction['number'],
                              step: instruction['step'],
                            );
                          },
                        ),
                        // TODO: Check if recipes sometimes return null for analyzedInstructions
                        if (recipe.analyzedInstructions == null)
                          Text(
                            recipe.instructions,
                            style: MyTextStyles.recipeDirectionText,
                          ),
                        SizedBox(height: 24.0),
                        // TODO: Url launcher to original recipe link
                        OriginalRecipeButton()
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
