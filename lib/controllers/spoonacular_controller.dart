import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../models/models.dart';
import '../services/network.dart';

class SpoonacularController extends GetxController {
  final Network _network = Network();

  /// ------------------------
  /// VARIABLES
  /// ------------------------

  RxString _searchQuery = ''.obs;
  RxList<Recipe> _randomRecipes = <Recipe>[].obs;
  Rx<RecipeSearchResult> _recipeSearchResult = RecipeSearchResult().obs;
  Rx<Recipe> _recipeInformation = Recipe().obs;

  /// ------------------------
  /// GETTERS
  /// ------------------------

  String get searchQuery => _searchQuery.value;
  List<Recipe> get randomRecipes => _randomRecipes;
  RecipeSearchResult get recipeSearchResult => _recipeSearchResult.value;
  Recipe get recipeInformation => _recipeInformation.value;

  /// ------------------------
  /// SETTERS
  /// ------------------------

  set searchQuery(String value) => _searchQuery.value = value;
  set randomRecipes(List<Recipe> value) => _randomRecipes.assignAll(value);
  set recipeSearchResult(RecipeSearchResult value) =>
      _recipeSearchResult.value = value;
  set recipeInformation(Recipe value) => _recipeInformation.value = value;

  /// ------------------------
  /// INIT
  /// ------------------------

  @override
  void onInit() async {
    super.onInit();
    await getRandomRecipes(10);
  }

  /// ------------------------
  /// METHODS
  /// ------------------------

  Future<void> getRandomRecipes(int number) async {
    final List<Recipe> _fetchedRandomRecipes =
        await _network.getRandomRecipes(number: number);
    randomRecipes = _fetchedRandomRecipes;
  }

  Future<void> searchRecipes(String query) async {
    final RecipeSearchResult _fetchedRecipeSearchResult =
        await _network.searchRecipes(query);
    recipeSearchResult = _fetchedRecipeSearchResult;
  }

  Future<void> getRecipeInformation(int id) async {
    final Recipe _fetchedRecipeInformation =
        await _network.getRecipeInformation(id);
    recipeInformation = _fetchedRecipeInformation;
  }

  String cleanDescription(int index) {
    final String htmlDescription = recipeSearchResult.results[index].summary;
    final RegExp regExp =
        RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    final String cleanDescription = htmlDescription.replaceAll(regExp, '');

    return cleanDescription;
  }

  String cleanSummary(String summary) {
    final RegExp regExp =
        RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    final String cleanSummary = summary.replaceAll(regExp, '');

    return cleanSummary;
  }

  String getIngredientImage(String ingredientImage) {
    final String baseUrl = 'https://spoonacular.com/cdn/ingredients_100x100/';
    final String fullUrl = '$baseUrl$ingredientImage';

    return fullUrl;
  }

  Color clockColor(int index) {
    final int minutes = recipeSearchResult.results[index].readyInMinutes;
    if (minutes > 0 && minutes <= 40) return MyColors.greenColor;
    if (minutes > 40 && minutes <= 70) return MyColors.orangeColor;
    if (minutes > 70) return MyColors.redColor;

    return MyColors.blueColor;
  }
}
