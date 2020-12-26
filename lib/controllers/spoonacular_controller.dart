import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:dio/dio.dart';

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
  Future<Response<dynamic>> getRecipeInformation(String recipeId) async {
    try {
      final Response<dynamic> response =
          await _api.get('recipes/$recipeId/information?');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<Response<dynamic>> getRandomRecipes({int number = 10}) async {
    try {
      final Response<dynamic> response =
          await _api.get('/recipes/random?number=$number&');
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<Response<dynamic>> searchRecipes(String query,
      {int number = 10}) async {
    try {
      final Response<dynamic> response =
          await _api.get('/recipes/complexSearch?query=$query&number=$number&');
      return response;
    } catch (e) {
      return null;
    }
  }
}
