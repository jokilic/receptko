import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:dio/dio.dart';

import '../models/recipe.dart';
import '../models/search_result.dart';
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
  Future<Response<dynamic>> getRecipeInformation(int recipeId) async {
    try {
      final Response<dynamic> response =
          await _api.get('recipes/$recipeId/information?');
      return response;
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
