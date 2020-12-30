import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/spoonacular_controller.dart';
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
          padding: EdgeInsets.all(24.0),
          child: Column(
            children: [
              RecipeSearch(),
            ],
          ),
        ),
      ),
    );
  }
}
