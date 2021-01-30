import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/colors.dart';
import '../models/models.dart';
import '../services/network.dart';

class SpoonacularController extends GetxController {
  final Network _network = Network();

  /// ------------------------
  /// VARIABLES
  /// ------------------------

  SharedPreferences _sharedPreferences;
  RxString _searchQuery = ''.obs;
  RxList<Recipe> _randomRecipes = <Recipe>[].obs;
  Rx<RecipeSearchResult> _recipeSearchResult = RecipeSearchResult().obs;
  Rx<Recipe> _recipeInformation = Recipe().obs;
  RxBool _recipeIsFavorited = false.obs;
  RxList _favoriteRecipes = [].obs;

  /// ------------------------
  /// GETTERS
  /// ------------------------

  SharedPreferences get sharedPreferences => _sharedPreferences;
  String get searchQuery => _searchQuery.value;
  List<Recipe> get randomRecipes => _randomRecipes;
  RecipeSearchResult get recipeSearchResult => _recipeSearchResult.value;
  Recipe get recipeInformation => _recipeInformation.value;
  bool get recipeIsFavorited => _recipeIsFavorited.value;
  List get favoriteRecipes => _favoriteRecipes;

  /// ------------------------
  /// SETTERS
  /// ------------------------

  set searchQuery(String value) => _searchQuery.value = value;
  set randomRecipes(List<Recipe> value) => _randomRecipes.assignAll(value);
  set recipeSearchResult(RecipeSearchResult value) =>
      _recipeSearchResult.value = value;
  set recipeInformation(Recipe value) => _recipeInformation.value = value;
  set recipeIsFavorited(bool value) => _recipeIsFavorited.value = value;
  set favoriteRecipes(List<List<String>> value) =>
      _favoriteRecipes.assignAll(value);

  /// ------------------------
  /// INIT
  /// ------------------------

  @override
  void onInit() async {
    super.onInit();
    _sharedPreferences = await SharedPreferences.getInstance();
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
    recipeInformation = null;
    final Recipe _fetchedRecipeInformation =
        await _network.getRecipeInformation(id);
    recipeInformation = _fetchedRecipeInformation;
    getRecipeIsFavorited(id);
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

  String getIngredientPrice(double price) {
    final double properPrice = price / 100;
    final String priceString = properPrice.toStringAsFixed(2);

    return '\$$priceString';
  }

  Color clockColor(int index) {
    final int minutes = recipeSearchResult.results[index].readyInMinutes;
    if (minutes > 0 && minutes <= 40) return MyColors.greenColor;
    if (minutes > 40 && minutes <= 70) return MyColors.orangeColor;
    if (minutes > 70) return MyColors.redColor;

    return MyColors.blueColor;
  }

  /// ------------------------
  /// SHARED PREFERENCES
  /// ------------------------

  Future<void> toggleFavoriteRecipe(Recipe chosenRecipe) async {
    recipeIsFavorited
        ? await removeFavoriteRecipe('${chosenRecipe.id}')
        : await setFavoriteRecipe(chosenRecipe);
    recipeIsFavorited = !recipeIsFavorited;
  }

  void getRecipeIsFavorited(int recipeId) =>
      recipeIsFavorited = getFavoriteRecipe('$recipeId') != null;

  Future<void> setFavoriteRecipe(Recipe favoritedRecipe) async {
    final List<String> favoritedRecipeList = [
      '${favoritedRecipe.id}',
      favoritedRecipe.title,
      favoritedRecipe.image,
      favoritedRecipe.summary,
      '${favoritedRecipe.readyInMinutes}',
    ];

    return await _sharedPreferences.setStringList(
        '${favoritedRecipe.id}', favoritedRecipeList);
  }

  List<String> getFavoriteRecipe(String key) =>
      _sharedPreferences.getStringList(key);

  Future<bool> removeFavoriteRecipe(String key) async =>
      await _sharedPreferences.remove(key);

  /// Get all favorited recipes
  void getFavoriteRecipes() {
    final Set<String> keys = _sharedPreferences.getKeys();
    keys.forEach((key) => favoriteRecipes.add(getFavoriteRecipe(key)));
  }
}
