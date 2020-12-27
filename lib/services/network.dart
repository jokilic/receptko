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

  /// Products

  Future<Product> getProductInformation(int id) async {
    try {
      final Response<dynamic> response = await _api.get('/food/products/$id?');
      final Product _product = response.data as Product;

      return _product;
    } catch (e) {
      return null;
    }
  }

  Future<ProductSearchResult> searchProducts(String query,
      {int number = 6}) async {
    try {
      final Response<dynamic> response =
          await _api.get('/food/products/search?query=$query&number=$number&');
      final ProductSearchResult _productSearchResult =
          response.data as ProductSearchResult;

      return _productSearchResult;
    } catch (e) {
      return null;
    }
  }

  /// Menu Items

  Future<MenuItem> getMenuItemInformation(int id) async {
    try {
      final Response<dynamic> response = await _api.get('/food/menuItems/$id?');
      final MenuItem _menuItem = response.data as MenuItem;

      return _menuItem;
    } catch (e) {
      return null;
    }
  }

  Future<MenuItemSearchResult> searchMenuItems(String query,
      {int number = 6}) async {
    try {
      final Response<dynamic> response =
          await _api.get('/food/menuItems/search?query=$query&number=$number&');
      final MenuItemSearchResult _menuItemSearchResult =
          response.data as MenuItemSearchResult;

      return _menuItemSearchResult;
    } catch (e) {
      return null;
    }
  }

  /// Wines

  Future<DishForWinePairing> getDishForWinePairing(String query) async {
    try {
      final Response<dynamic> response =
          await _api.get('/food/wine/dishes?wine=$query&');
      final DishForWinePairing _dishForWinePairing =
          response.data as DishForWinePairing;

      return _dishForWinePairing;
    } catch (e) {
      return null;
    }
  }

  Future<WineForDishPairing> getWineForDishPairing(String query) async {
    try {
      final Response<dynamic> response =
          await _api.get('/food/wine/pairing?food=$query&');
      final WineForDishPairing _wineForDishPairing =
          response.data as WineForDishPairing;

      return _wineForDishPairing;
    } catch (e) {
      return null;
    }
  }

  Future<WineDescription> getWineDescription(String query) async {
    try {
      final Response<dynamic> response =
          await _api.get('/food/wine/description?wine=$query&');
      final WineDescription _wineDescription = response.data as WineDescription;

      return _wineDescription;
    } catch (e) {
      return null;
    }
  }

  Future<WineRecommendation> getWineRecommendation(String query,
      {int number = 6}) async {
    try {
      final Response<dynamic> response = await _api
          .get('/food/wine/recommendation?wine=$query&number=$number&');
      final WineRecommendation _wineRecommendation =
          response.data as WineRecommendation;

      return _wineRecommendation;
    } catch (e) {
      return null;
    }
  }

  /// Global Search

  Future<GlobalSearch> searchGlobal(String query, {int number = 10}) async {
    try {
      final Response<dynamic> response =
          await _api.get('/food/search?query=$query&number=$number&');
      final GlobalSearch _globalSearch = response.data as GlobalSearch;

      return _globalSearch;
    } catch (e) {
      return null;
    }
  }

  /// Jokes & Trivia

  Future<RandomJoke> getRandomJoke() async {
    try {
      final Response<dynamic> response = await _api.get('/food/jokes/random?');
      final RandomJoke _randomJoke = response.data as RandomJoke;

      return _randomJoke;
    } catch (e) {
      return null;
    }
  }

  Future<RandomTrivia> getRandomTrivia() async {
    try {
      final Response<dynamic> response = await _api.get('/food/trivia/random?');
      final RandomTrivia _randomTrivia = response.data as RandomTrivia;

      return _randomTrivia;
    } catch (e) {
      return null;
    }
  }
}
