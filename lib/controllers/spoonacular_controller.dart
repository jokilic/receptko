import 'package:get/get.dart';

import '../services/network.dart';
import '../models/models.dart';

class SpoonacularController extends GetxController {
  final Network _network = Network();

  /// ------------------------
  /// VARIABLES
  /// ------------------------

  RxString _searchQuery = ''.obs;
  RxList<Recipe> _randomRecipes = <Recipe>[].obs;
  Rx<RecipeSearchResult> _recipeSearchResult = RecipeSearchResult().obs;

  /// ------------------------
  /// GETTERS
  /// ------------------------

  String get searchQuery => _searchQuery.value;
  List<Recipe> get randomRecipes => _randomRecipes;
  RecipeSearchResult get recipeSearchResult => _recipeSearchResult.value;

  /// ------------------------
  /// SETTERS
  /// ------------------------

  set searchQuery(String value) => _searchQuery.value = value;
  set randomRecipes(List<Recipe> value) => _randomRecipes.assignAll(value);
  set recipeSearchResult(RecipeSearchResult value) =>
      _recipeSearchResult.value = value;

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
    List<Recipe> _fetchedRandomRecipes =
        await _network.getRandomRecipes(number: number);
    randomRecipes = _fetchedRandomRecipes;
  }

  Future<void> searchRecipes(String query) async {
    RecipeSearchResult _fetchedRecipeSearchResult =
        await _network.searchRecipes(query);
    recipeSearchResult = _fetchedRecipeSearchResult;
  }
}
