import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/text_styles.dart';
import '../controllers/spoonacular_controller.dart';
import '../enums/cuisine.dart';
import '../enums/diets.dart';
import '../enums/intolerance.dart';
import '../enums/meal_type.dart';
import '../screens/results_screen.dart';
import '../widgets/header_widget.dart';
import '../widgets/kuharko_button.dart';
import '../widgets/search_screen/checkbox_dialog.dart';
import '../widgets/search_screen/minutes_dialog.dart';
import '../widgets/search_screen/search_dialog.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = '/search-screen';

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
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 36.0),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: HeaderWidget(
                    title: 'Ask Kuharko Marko...',
                    subtitle: 'Colored words can be tapped',
                    hasSubtitle: true,
                  ),
                ),
                SizedBox(height: 36.0),
                Obx(
                  () => RichText(
                    text: TextSpan(
                      text: 'I want recipes from ',
                      style: MyTextStyles.searchText,
                      children: <TextSpan>[
                        TextSpan(
                          text: _spoonacularController.wantedCuisines.isEmpty
                              ? '_____'
                              : _spoonacularController.wantedCuisines
                                  .toUpperCase(),
                          style: MyTextStyles.searchDynamicText
                              .copyWith(color: MyColors.randomColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.dialog(
                                  CheckboxDialog(
                                    title: 'Your preferred cuisines',
                                    icon: MyIcons.randomIllustration,
                                    chosenEnums: cuisines,
                                    chosenControllerList: _spoonacularController
                                        .wantedCuisinesList,
                                    setJoinedValues: (joinedValues) =>
                                        _spoonacularController.wantedCuisines =
                                            joinedValues,
                                  ),
                                ),
                        ),
                        TextSpan(
                          text: ' cuisines and I want the food to be ',
                        ),
                        TextSpan(
                          text: _spoonacularController.wantedDiets.isEmpty
                              ? '_____'
                              : _spoonacularController.wantedDiets
                                  .toUpperCase(),
                          style: MyTextStyles.searchDynamicText
                              .copyWith(color: MyColors.randomColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.dialog(
                                  CheckboxDialog(
                                    title: 'Your preferred diet',
                                    icon: MyIcons.randomIllustration,
                                    chosenEnums: diets,
                                    chosenControllerList:
                                        _spoonacularController.wantedDietsList,
                                    multiValue: false,
                                    setJoinedValues: (joinedValues) =>
                                        _spoonacularController.wantedDiets =
                                            joinedValues,
                                  ),
                                ),
                        ),
                        TextSpan(
                          text: '.',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Obx(
                  () => RichText(
                    text: TextSpan(
                      text: 'I\'m ',
                      style: MyTextStyles.searchText,
                      children: <TextSpan>[
                        TextSpan(
                          text: _spoonacularController
                                  .nonWantedIntolerances.isEmpty
                              ? '_____'
                              : _spoonacularController.nonWantedIntolerances
                                  .toUpperCase(),
                          style: MyTextStyles.searchDynamicText
                              .copyWith(color: MyColors.randomColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.dialog(
                                  CheckboxDialog(
                                    title: 'Your intolerances',
                                    icon: MyIcons.randomIllustration,
                                    chosenEnums: intolerances,
                                    chosenControllerList:
                                        _spoonacularController.intolerancesList,
                                    setJoinedValues: (joinedValues) =>
                                        _spoonacularController
                                                .nonWantedIntolerances =
                                            joinedValues,
                                  ),
                                ),
                        ),
                        TextSpan(
                          text: ' intolerant, so I don\'t need those recipes.',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 36.0),
                Center(
                  child: Image.asset(
                    MyIcons.randomIllustration,
                    height: 142.0,
                    width: 142.0,
                  ),
                ),
                SizedBox(height: 36.0),
                Obx(
                  () => RichText(
                    text: TextSpan(
                      text: 'The ingredients I have in my kitchen are ',
                      style: MyTextStyles.searchText,
                      children: <TextSpan>[
                        TextSpan(
                          text: _spoonacularController.wantedIngredients.isEmpty
                              ? '_____'
                              : _spoonacularController.wantedIngredients
                                  .toUpperCase(),
                          style: MyTextStyles.searchDynamicText
                              .copyWith(color: MyColors.randomColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.dialog(
                                  SearchDialog(
                                    title: 'Ingredients in your kitchen',
                                    image: MyIcons.randomIllustration,
                                    hintText: 'Enter your ingredient...',
                                    hintIcon: MyIcons.ingredients,
                                    chosenTextController: _spoonacularController
                                        .ingredientsInKitchenController,
                                    chosenControllerList: _spoonacularController
                                        .ingredientsInKitchen,
                                    setJoinedValues: (joinedValues) =>
                                        _spoonacularController
                                            .wantedIngredients = joinedValues,
                                  ),
                                ),
                        ),
                        TextSpan(
                          text: '.',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Obx(
                  () => RichText(
                    text: TextSpan(
                      text: 'I don\'t want ',
                      style: MyTextStyles.searchText,
                      children: <TextSpan>[
                        TextSpan(
                          text: _spoonacularController
                                  .nonWantedIngredients.isEmpty
                              ? '_____'
                              : _spoonacularController.nonWantedIngredients
                                  .toUpperCase(),
                          style: MyTextStyles.searchDynamicText
                              .copyWith(color: MyColors.randomColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.dialog(
                                  SearchDialog(
                                    title: 'Ingredients you don\'t want',
                                    image: MyIcons.randomIllustration,
                                    hintText: 'Enter unwanted ingredient...',
                                    hintIcon: MyIcons.ingredients,
                                    chosenTextController: _spoonacularController
                                        .unwantedIngredientsInKitchenController,
                                    chosenControllerList: _spoonacularController
                                        .unwantedIngredientsInKitchen,
                                    setJoinedValues: (joinedValues) =>
                                        _spoonacularController
                                                .nonWantedIngredients =
                                            joinedValues,
                                  ),
                                ),
                        ),
                        TextSpan(
                          text: ' in my food.',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 36.0),
                Center(
                  child: Image.asset(
                    MyIcons.randomIllustration,
                    height: 142.0,
                    width: 142.0,
                  ),
                ),
                SizedBox(height: 36.0),
                Obx(
                  () => RichText(
                    text: TextSpan(
                      text: 'I\'m trying to find ',
                      style: MyTextStyles.searchText,
                      children: <TextSpan>[
                        TextSpan(
                          text: _spoonacularController.wantedMealTypes.isEmpty
                              ? '_____'
                              : _spoonacularController.wantedMealTypes
                                  .toUpperCase(),
                          style: MyTextStyles.searchDynamicText
                              .copyWith(color: MyColors.randomColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.dialog(
                                  CheckboxDialog(
                                    title: 'Preferred meal types',
                                    icon: MyIcons.randomIllustration,
                                    chosenEnums: mealTypes,
                                    chosenControllerList: _spoonacularController
                                        .wantedMealTypesList,
                                    multiValue: false,
                                    setJoinedValues: (joinedValues) =>
                                        _spoonacularController.wantedMealTypes =
                                            joinedValues,
                                  ),
                                ),
                        ),
                        TextSpan(
                          text: ' meals.',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Obx(
                  () => RichText(
                    text: TextSpan(
                      text: 'I want my food to be ready in ',
                      style: MyTextStyles.searchText,
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              '${_spoonacularController.wantedMinutes} MINUTES',
                          style: MyTextStyles.searchDynamicText
                              .copyWith(color: MyColors.randomColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.dialog(
                                  Obx(
                                    () => MinutesDialog(
                                      title: 'Choose desired minutes',
                                      icon: MyIcons.timer,
                                      minutes:
                                          _spoonacularController.wantedMinutes,
                                      minusPressed: () {
                                        if (_spoonacularController
                                                .wantedMinutes >
                                            1) {
                                          _spoonacularController
                                              .wantedMinutes--;
                                        }
                                      },
                                      plusPressed: () => _spoonacularController
                                          .wantedMinutes++,
                                    ),
                                  ),
                                ),
                        ),
                        TextSpan(
                          text: '.',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 56.0),
                KuharkoButton(
                  text: 'Find recipes'.toUpperCase(),
                  onTap: () {
                    _spoonacularController.complexRecipeSearch();
                    Get.toNamed(ResultsScreen.routeName);
                  },
                ),
                SizedBox(height: 56.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
