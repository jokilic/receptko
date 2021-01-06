import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../controllers/spoonacular_controller.dart';
import '../models/recipe/recipe_search_result.dart';
import '../widgets/header_widget.dart';
import '../widgets/search_widget.dart';
import '../widgets/results_screen/recipe_result.dart';

class ResultsScreen extends StatelessWidget {
  static const routeName = '/results-screen';

  @override
  Widget build(BuildContext context) {
    final SpoonacularController _spoonacularController =
        Get.find<SpoonacularController>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 36.0),
                HeaderWidget(title: 'Search results below'),
                SizedBox(height: 16.0),
                SearchWidget(),
                SizedBox(height: 20.0),
                Obx(
                  () {
                    if (_spoonacularController.recipeSearchResult == null)
                      return Column(
                        children: [
                          SizedBox(height: 42.0),
                          SpinKitFoldingCube(
                            color: MyColors.randomColor,
                            size: 36.0,
                          ),
                          SizedBox(height: 32.0),
                          Text(
                            'Just a sec...',
                            style: MyTextStyles.headline2Text,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );

                    return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _spoonacularController
                          .recipeSearchResult.results.length,
                      itemBuilder: (BuildContext context, int index) {
                        final RecipeSearchResults recipe =
                            _spoonacularController
                                .recipeSearchResult.results[index];

                        return RecipeResult(
                          title: recipe.title.length > 24
                              ? '${recipe.title.substring(0, 24)}...'
                              : recipe.title,
                          description: _spoonacularController
                                  .cleanDescription(index)
                                  .substring(0, 54) +
                              '...',
                          image: recipe.image,
                          color: MyColors.randomColor,
                          clockColor: _spoonacularController.clockColor(index),
                          onTap: () => print('Pressed ${recipe.title}'),
                          minutes: recipe.readyInMinutes,
                          isVegan: recipe.vegan,
                          isHealthy: true,
                          isCheap: recipe.cheap,
                          isPopular: recipe.veryPopular,
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
