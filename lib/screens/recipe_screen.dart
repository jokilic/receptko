import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/images.dart';
import '../constants/shadows.dart';
import '../constants/text_styles.dart';
import '../controllers/spoonacular_controller.dart';
import '../models/recipe/recipe.dart';
import '../widgets/header_widget.dart';
import '../widgets/kuharko_button.dart';
import '../widgets/recipe_screen/ingredient_widget.dart';
import '../widgets/recipe_screen/recipe_boolean_values_widget.dart';
import '../widgets/recipe_screen/recipe_grid_widget.dart';
import '../widgets/recipe_screen/recipe_instruction_widget.dart';

class RecipeScreen extends StatelessWidget {
  static const String routeName = '/recipe-screen';

  @override
  Widget build(BuildContext context) {
    final SpoonacularController _spoonacularController =
        Get.find<SpoonacularController>();

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Obx(
          () {
            final Recipe recipe = _spoonacularController.recipeInformation;

            if (recipe == null) {
              return SizedBox(
                height: Get.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const HeaderWidget(chefOnly: true),
                    const SizedBox(height: 50.0),
                    const Text(
                      'Just a sec...',
                      style: MyTextStyles.headline2Text,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50.0),
                    SpinKitFoldingCube(
                      color: MyColors.randomColor,
                      size: 36.0,
                    ),
                  ],
                ),
              );
            }

            return Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Transform.scale(
                      scale: 1.2,
                      child: recipe.image == null
                          ? Image.asset(
                              MyImages.foodPlaceholder,
                              width: double.infinity,
                              height: Get.height * 0.5,
                              fit: BoxFit.cover,
                            )
                          : Image.network(
                              recipe.image,
                              width: double.infinity,
                              height: Get.height * 0.5,
                              fit: BoxFit.cover,
                            ),
                    ),
                    Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(44.0),
                        color: MyColors.bodyColor,
                      ),
                      child: Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 36.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  recipe.title,
                                  style: MyTextStyles.headline1Text,
                                ),
                                const SizedBox(height: 24.0),
                                SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: <Widget>[
                                      RecipeGridWidget(
                                        color: MyColors.greenRecipeColor,
                                        icon: MyIcons.clock,
                                        text: '${recipe.readyInMinutes} MIN',
                                      ),
                                      const SizedBox(width: 16.0),
                                      RecipeGridWidget(
                                        color: MyColors.yellowRecipeColor,
                                        icon: MyIcons.popular,
                                        text:
                                            '${recipe.spoonacularScore / 20} / 5',
                                      ),
                                      const SizedBox(width: 16.0),
                                      RecipeGridWidget(
                                        color: MyColors.blueRecipeColor,
                                        icon: MyIcons.money,
                                        text: _spoonacularController
                                            .getIngredientPrice(
                                                recipe.pricePerServing),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 24.0),
                                const Text(
                                  'Summary',
                                  style: MyTextStyles.headline2Text,
                                ),
                                const SizedBox(height: 16.0),
                                SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: <Widget>[
                                      if (recipe.cheap)
                                        const RecipeBooleanValuesWidget(
                                          color: MyColors.orangeColor,
                                          icon: MyIcons.money,
                                          text: 'Cheap',
                                        ),
                                      if (recipe.vegan)
                                        const RecipeBooleanValuesWidget(
                                          color: MyColors.greenColor,
                                          icon: MyIcons.vegan,
                                          text: 'Vegan',
                                        ),
                                      if (recipe.veryHealthy)
                                        const RecipeBooleanValuesWidget(
                                          color: MyColors.redColor,
                                          icon: MyIcons.healthy,
                                          text: 'Healthy',
                                        ),
                                      if (recipe.veryPopular)
                                        const RecipeBooleanValuesWidget(
                                          color: MyColors.yellowRecipeColor,
                                          icon: MyIcons.popular,
                                          text: 'Popular',
                                        ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                                Text(
                                  _spoonacularController
                                      .cleanSummary(recipe.summary),
                                  style: MyTextStyles.recipeSummary,
                                ),
                                const SizedBox(height: 24.0),
                                const Text(
                                  'Ingredients',
                                  style: MyTextStyles.headline2Text,
                                ),
                                const SizedBox(height: 16.0),
                                SizedBox(
                                  height: 250.0,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    physics: const BouncingScrollPhysics(),
                                    itemCount:
                                        recipe.extendedIngredients.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      final ExtendedIngredients ingredient =
                                          recipe.extendedIngredients[index];

                                      return IngredientWidget(
                                        image: _spoonacularController
                                            .getIngredientImage(
                                                ingredient.image),
                                        title: ingredient.name,
                                        amount: ingredient.amount,
                                        unit: ingredient.unit,
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                if (recipe.analyzedInstructions != null &&
                                    recipe.instructions != null &&
                                    (recipe.analyzedInstructions.isNotEmpty ||
                                        recipe.instructions.isNotEmpty))
                                  const Text(
                                    'Directions',
                                    style: MyTextStyles.headline2Text,
                                  ),
                                const SizedBox(height: 16.0),
                                if (recipe.analyzedInstructions.isNotEmpty)
                                  ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: recipe
                                            .analyzedInstructions[0]['steps']
                                            .length ??
                                        0,
                                    shrinkWrap: true,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      final dynamic instruction =
                                          recipe.analyzedInstructions[0]
                                              ['steps'][index];

                                      return RecipeInstructionWidget(
                                        number: instruction['number'] ?? 0,
                                        step: instruction['step'] ?? '',
                                      );
                                    },
                                  ),
                                if (recipe.analyzedInstructions.isEmpty)
                                  Text(
                                    recipe.instructions ?? '',
                                    style: MyTextStyles.recipeDirectionText,
                                  ),
                                const SizedBox(height: 24.0),
                                KuharkoButton(
                                  text: 'See original recipe',
                                  onTap: () => _spoonacularController
                                      .launchURL(recipe.sourceUrl),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 46.0,
                            top: -42.0,
                            child: GestureDetector(
                              onTap: () => _spoonacularController
                                  .toggleFavoriteRecipe(recipe),
                              child: Container(
                                width: 80.0,
                                height: 80.0,
                                padding: const EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  color: MyColors.bodyColor,
                                  shape: BoxShape.circle,
                                  boxShadow: Shadows.myShadow,
                                ),
                                child: Image.asset(
                                  _spoonacularController.recipeIsFavorited
                                      ? MyIcons.favoriteFull
                                      : MyIcons.favoriteOutline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: 24.0,
                  top: 64.0,
                  child: GestureDetector(
                    onTap: Get.back,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: MyColors.bodyColor,
                        shape: BoxShape.circle,
                        boxShadow: Shadows.myShadow,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Image.asset(
                          MyIcons.back,
                          color: MyColors.randomColor,
                        ),
                      ),
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
