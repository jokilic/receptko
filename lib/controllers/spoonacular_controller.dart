import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';
import '../enums/cuisine.dart';
import '../enums/meal_type.dart';
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
  RxList<Recipe> _cuisineRecipes = <Recipe>[].obs;
  RxList<Recipe> _mealTypeRecipes = <Recipe>[].obs;
  Rx<RecipeSearchResult> _recipeSearchResult = RecipeSearchResult().obs;
  Rx<Recipe> _recipeInformation = Recipe().obs;
  RxBool _recipeIsFavorited = false.obs;
  RxList<dynamic> _favoriteRecipes = [].obs;
  RxString _randomCuisineName = ''.obs;
  RxString _randomMealTypeName = ''.obs;

  /// ------------------------
  /// GETTERS
  /// ------------------------

  SharedPreferences get sharedPreferences => _sharedPreferences;
  String get searchQuery => _searchQuery.value;
  List<Recipe> get randomRecipes => _randomRecipes;
  List<Recipe> get cuisineRecipes => _cuisineRecipes;
  List<Recipe> get mealTypeRecipes => _mealTypeRecipes;
  RecipeSearchResult get recipeSearchResult => _recipeSearchResult.value;
  Recipe get recipeInformation => _recipeInformation.value;
  bool get recipeIsFavorited => _recipeIsFavorited.value;
  List<dynamic> get favoriteRecipes => _favoriteRecipes;
  String get randomCuisineName => _randomCuisineName.value;
  String get randomMealTypeName => _randomMealTypeName.value;

  /// ------------------------
  /// SETTERS
  /// ------------------------

  set searchQuery(String value) => _searchQuery.value = value;
  set randomRecipes(List<Recipe> value) => _randomRecipes.assignAll(value);
  set cuisineRecipes(List<Recipe> value) => _cuisineRecipes.assignAll(value);
  set mealTypeRecipes(List<Recipe> value) => _mealTypeRecipes.assignAll(value);
  set recipeSearchResult(RecipeSearchResult value) =>
      _recipeSearchResult.value = value;
  set recipeInformation(Recipe value) => _recipeInformation.value = value;
  set recipeIsFavorited(bool value) => _recipeIsFavorited.value = value;
  set favoriteRecipes(List<List<String>> value) =>
      _favoriteRecipes.assignAll(value);
  set randomCuisineName(String value) => _randomCuisineName.value = value;
  set randomMealTypeName(String value) => _randomMealTypeName.value = value;

  /// ------------------------
  /// INIT
  /// ------------------------

  @override
  void onInit() async {
    super.onInit();
    _sharedPreferences = await SharedPreferences.getInstance();
    getFavoriteRecipes();
    randomCuisineName = randomCuisine;
    randomMealTypeName = randomMealType;
    await getRandomRecipes(4);
    await getCuisineRecipes(3, randomCuisineName);
    await getMealTypeRecipes(3, randomMealTypeName);
  }

  /// ------------------------
  /// METHODS
  /// ------------------------

  Future<void> getRandomRecipes(int number) async {
    final List<Recipe> _fetchedRandomRecipes =
        await _network.getRandomRecipes(number: number);
    randomRecipes = _fetchedRandomRecipes;
  }

  Future<void> getCuisineRecipes(int number, String tag) async {
    final List<Recipe> _fetchedCuisineRecipes =
        await _network.getRandomRecipes(number: number, tag: tag);
    cuisineRecipes = _fetchedCuisineRecipes;
  }

  Future<void> getMealTypeRecipes(int number, String tag) async {
    final List<Recipe> _fetchedMealTypeRecipes =
        await _network.getRandomRecipes(number: number, tag: tag);
    mealTypeRecipes = _fetchedMealTypeRecipes;
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
    const String baseUrl = 'https://spoonacular.com/cdn/ingredients_100x100/';
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
    getFavoriteRecipes();
  }

  void getRecipeIsFavorited(int recipeId) =>
      recipeIsFavorited = getFavoriteRecipe('$recipeId') != null;

  Future<void> setFavoriteRecipe(Recipe favoritedRecipe) async {
    final List<String> favoritedRecipeList = <String>[
      '${favoritedRecipe.id}',
      favoritedRecipe.title,
      favoritedRecipe.image,
      '${favoritedRecipe.spoonacularScore}',
    ];

    return _sharedPreferences.setStringList(
        '${favoritedRecipe.id}', favoritedRecipeList);
  }

  List<String> getFavoriteRecipe(String key) =>
      _sharedPreferences.getStringList(key);

  Future<bool> removeFavoriteRecipe(String key) async =>
      _sharedPreferences.remove(key);

  /// Get all favorited recipes
  void getFavoriteRecipes() {
    favoriteRecipes.clear();
    final Set<String> keys = _sharedPreferences.getKeys();
    keys.forEach((key) => favoriteRecipes.add(getFavoriteRecipe(key)));
  }

  /// ------------------------
  /// URL LAUNCHER
  /// ------------------------
  void launchURL(String url) async => await launch(url);

  /// ------------------------
  /// TIME OF DAY
  /// ------------------------

}
