import 'package:dio/dio.dart';

import '../models/models.dart';
import '../services/api.dart';

class Network {
  final Api _api = Api();

  /// ----------------------
  // API Calls
  /// ----------------------

  /// Recipes

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

  Future<RecipeSearchResult> searchRecipes(String query,
      {int number = 10}) async {
    try {
      final Response<dynamic> response =
          await _api.get('/recipes/complexSearch?query=$query&number=$number&');
      final RecipeSearchResult _recipeSearchResult =
          response.data as RecipeSearchResult;

      return _recipeSearchResult;
    } catch (e) {
      return null;
    }
  }

  /// Ingredients

  Future<Ingredient> getIngredientInformation(int id) async {
    try {
      final Response<dynamic> response =
          await _api.get('/food/ingredients/$id/information?');
      final Ingredient _ingredient = response.data as Ingredient;

      return _ingredient;
    } catch (e) {
      return null;
    }
  }

  Future<IngredientSearchResult> searchIngredients(String query,
      {int number = 6}) async {
    try {
      final Response<dynamic> response = await _api
          .get('/food/ingredients/search?query=$query&number=$number&');
      final IngredientSearchResult _ingredientSearchResult =
          response.data as IngredientSearchResult;

      return _ingredientSearchResult;
    } catch (e) {
      return null;
    }
  }
}
