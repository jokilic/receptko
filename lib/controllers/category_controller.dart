import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../models/category.dart';
import 'theme_controller.dart';

class CategoryController extends GetxController {
  final bool _isDark = Get.find<ThemeController>().darkTheme;
  RxList<Category> _categories;

  @override
  Future<void> onInit() async {
    super.onInit();

    _categories = <Category>[
      Category(
        icon: MyIcons.grill,
        title: 'Grill',
        color: _isDark ? DarkColors.redColor : LightColors.redColor,
      ),
      Category(
        icon: MyIcons.vegan,
        title: 'Vegan',
        color: _isDark ? DarkColors.greenColor : LightColors.greenColor,
      ),
      Category(
        icon: MyIcons.exotic,
        title: 'Exotic',
        color: _isDark ? DarkColors.greenColor : LightColors.greenColor,
      ),
      Category(
        icon: MyIcons.spicy,
        title: 'Spicy',
        color: _isDark ? DarkColors.orangeColor : LightColors.orangeColor,
      ),
      Category(
        icon: MyIcons.japan,
        title: 'Japan',
        color: _isDark ? DarkColors.redColor : LightColors.redColor,
      ),
      Category(
        icon: MyIcons.seafood,
        title: 'Seafood',
        color: _isDark ? DarkColors.greenColor : LightColors.greenColor,
      ),
      Category(
        icon: MyIcons.italian,
        title: 'Italian',
        color: _isDark ? DarkColors.orangeColor : LightColors.orangeColor,
      ),
      Category(
        icon: MyIcons.chocolate,
        title: 'Chocolate',
        color: _isDark ? DarkColors.redColor : LightColors.redColor,
      ),
      Category(
        icon: MyIcons.cheese,
        title: 'Cheese',
        color: _isDark ? DarkColors.orangeColor : LightColors.orangeColor,
      ),
      Category(
        icon: MyIcons.fruit,
        title: 'Fruit',
        color: _isDark ? DarkColors.greenColor : LightColors.greenColor,
      ),
    ].obs;
  }

  List<Category> get categories => _categories;
}
