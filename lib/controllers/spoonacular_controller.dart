import 'package:get/get.dart';

import '../services/network.dart';
import '../models/models.dart';

class SpoonacularController extends GetxController {
  final Network _network = Network();
  RxList<Recipe> _randomRecipes = <Recipe>[].obs;

  List<Recipe> get randomRecipes => _randomRecipes;

  @override
  void onInit() async {
    super.onInit();
    await getRandomRecipes(10);
  }

  Future<void> getRandomRecipes(int number) async {
    List<Recipe> _fetchedRandomRecipes =
        await _network.getRandomRecipes(number: number);
    _randomRecipes.assignAll(_fetchedRandomRecipes);
  }
}
