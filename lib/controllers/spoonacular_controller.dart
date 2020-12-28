import 'package:get/get_state_manager/get_state_manager.dart';

import '../services/network.dart';

class SpoonacularController extends GetxController {
  final Network _network = Network();

  @override
  void onInit() {
    super.onInit();

    _network.searchRecipes('pizza');
  }
}
