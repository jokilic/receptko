import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../models/category.dart';
import 'theme_controller.dart';

class CategoryController extends GetxController {
  final ThemeController _themeController = Get.find<ThemeController>();
  RxList<Category> _categories;

  @override
  Future<void> onInit() async {
    super.onInit();

    _categories = <Category>[
      Category(
        icon: MyIcons.grill,
        title: 'Grill',
        color: _themeController.darkTheme ? DarkColors.redColor : LightColors.redColor,
      ),
      Category(
        icon: MyIcons.vegan,
        title: 'Vegan',
        color: _themeController.darkTheme ? DarkColors.greenColor : LightColors.greenColor,
      ),
      Category(
        icon: MyIcons.exotic,
        title: 'Exotic',
        color: _themeController.darkTheme ? DarkColors.greenColor : LightColors.greenColor,
      ),
      Category(
        icon: MyIcons.spicy,
        title: 'Spicy',
        color: _themeController.darkTheme ? DarkColors.orangeColor : LightColors.orangeColor,
      ),
      Category(
        icon: MyIcons.japan,
        title: 'Japan',
        color: _themeController.darkTheme ? DarkColors.redColor : LightColors.redColor,
      ),
      Category(
        icon: MyIcons.seafood,
        title: 'Seafood',
        color: _themeController.darkTheme ? DarkColors.greenColor : LightColors.greenColor,
      ),
      Category(
        icon: MyIcons.italian,
        title: 'Italian',
        color: _themeController.darkTheme ? DarkColors.orangeColor : LightColors.orangeColor,
      ),
      Category(
        icon: MyIcons.chocolate,
        title: 'Chocolate',
        color: _themeController.darkTheme ? DarkColors.redColor : LightColors.redColor,
      ),
      Category(
        icon: MyIcons.cheese,
        title: 'Cheese',
        color: _themeController.darkTheme ? DarkColors.orangeColor : LightColors.orangeColor,
      ),
      Category(
        icon: MyIcons.fruit,
        title: 'Fruit',
        color: _themeController.darkTheme ? DarkColors.greenColor : LightColors.greenColor,
      ),
    ].obs;
  }

  List<Category> get categories => _categories;
}
