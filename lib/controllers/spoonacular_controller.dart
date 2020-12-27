import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:dio/dio.dart';

import '../models/recipe.dart';
import '../models/recipe_summary.dart';
import '../models/search_result.dart';
import '../models/similar_recipe.dart';
import '../services/api.dart';

class SpoonacularController extends GetxController {
  final Api _api = Api();

  @override
  void onInit() {
    super.onInit();
    getRandomRecipes();
  }

  // ----------------------
  // API Calls
  // ----------------------
  Future<Recipe> getRecipeInformation(int id) async {
    try {
      final Response<dynamic> response =
          await _api.get('recipes/$id/information?');
      final Recipe _recipe = response.data as Recipe;

      return _recipe;
    } catch (e) {
      return null;
    }
  }

  Future<List<Recipe>> getRandomRecipes({int number = 10}) async {
    try {
      final Response<dynamic> response =
          await _api.get('/recipes/random?number=$number&');
      final List<Recipe> _recipes = response.data as List<Recipe>;

      return _recipes;
    } catch (e) {
      return null;
    }
  }

  Future<List<SimilarRecipe>> getSimilarRecipes(int id,
      {int number = 3}) async {
    try {
      final Response<dynamic> response =
          await _api.get('/recipes/$id/similar?number=$number&');
      final List<SimilarRecipe> _recipes = response.data as List<SimilarRecipe>;

      return _recipes;
    } catch (e) {
      return null;
    }
  }

  Future<RecipeSummary> getRecipeSummary(int id) async {
    try {
      final Response<dynamic> response =
          await _api.get('/recipes/$id/summary?');
      final RecipeSummary _recipes = response.data as RecipeSummary;

      return _recipes;
    } catch (e) {
      return null;
    }
  }

  Future<SearchResult> searchRecipes(String query, {int number = 10}) async {
    try {
      final Response<dynamic> response =
          await _api.get('/recipes/complexSearch?query=$query&number=$number&');
      final SearchResult _searchResult = response.data as SearchResult;

      return _searchResult;
    } catch (e) {
      return null;
    }
  }
}
