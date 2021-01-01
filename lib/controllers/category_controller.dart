import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../models/category.dart';

class CategoryController extends GetxController {
  RxList<Category> _categories = [
    Category(
      icon: MyIcons.grill,
      title: 'Grill',
      color: MyColors.redColor,
      searchTerms: [
        'grill',
        'hamburger',
        '...',
      ],
    ),
    Category(
      icon: MyIcons.vegan,
      title: 'Vegan',
      color: MyColors.greenColor,
    ),
    Category(
      icon: MyIcons.exotic,
      title: 'Exotic',
      color: MyColors.greenColor,
    ),
    Category(
      icon: MyIcons.spicy,
      title: 'Spicy',
      color: MyColors.orangeColor,
    ),
    Category(
      icon: MyIcons.japan,
      title: 'Japan',
      color: MyColors.redColor,
    ),
    Category(
      icon: MyIcons.seafood,
      title: 'Seafood',
      color: MyColors.greenColor,
    ),
    Category(
      icon: MyIcons.italian,
      title: 'Italian',
      color: MyColors.orangeColor,
    ),
    Category(
      icon: MyIcons.chocolate,
      title: 'Chocolate',
      color: MyColors.redColor,
    ),
    Category(
      icon: MyIcons.cheese,
      title: 'Cheese',
      color: MyColors.orangeColor,
    ),
    Category(
      icon: MyIcons.fruit,
      title: 'Fruit',
      color: MyColors.greenColor,
    ),
  ].obs;

  List<Category> get categories => _categories;
}
