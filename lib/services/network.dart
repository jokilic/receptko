import 'package:dio/dio.dart';

import '../models/ingredient_result.dart';
import '../models/recipe.dart';
import '../models/recipe_summary.dart';
import '../models/search_result.dart';
import '../models/similar_recipe.dart';
import '../services/api.dart';

class Network {
  final Api _api = Api();

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
      {int number = 6}) async {
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
      final RecipeSummary _recipeSummary = response.data as RecipeSummary;

      return _recipeSummary;
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

  Future<IngredientResult> searchIngredients(String query,
      {int number = 6}) async {
    try {
      final Response<dynamic> response = await _api
          .get('/food/ingredients/search?query=$query&number=$number&');
      final IngredientResult _ingredientResult =
          response.data as IngredientResult;

      return _ingredientResult;
    } catch (e) {
      return null;
    }
  }
}
