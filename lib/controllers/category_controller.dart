import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../models/category.dart';

class CategoryController extends GetxController {
  final RxList<Category> _categories = <Category>[
    Category(
      icon: MyIcons.grill,
      title: 'Grill',
      color: MyColors.redColor,
      searchTerms: <String>[
        'grill',
        'hamburger',
      ],
    ),
    Category(
      icon: MyIcons.vegan,
      title: 'Vegan',
      color: MyColors.greenColor,
      searchTerms: <String>[
        'grill',
        'hamburger',
      ],
    ),
    Category(
      icon: MyIcons.exotic,
      title: 'Exotic',
      color: MyColors.greenColor,
      searchTerms: <String>[
        'grill',
        'hamburger',
      ],
    ),
    Category(
      icon: MyIcons.spicy,
      title: 'Spicy',
      color: MyColors.orangeColor,
      searchTerms: <String>[
        'grill',
        'hamburger',
      ],
    ),
    Category(
      icon: MyIcons.japan,
      title: 'Japan',
      color: MyColors.redColor,
      searchTerms: <String>[
        'grill',
        'hamburger',
      ],
    ),
    Category(
      icon: MyIcons.seafood,
      title: 'Seafood',
      color: MyColors.greenColor,
      searchTerms: <String>[
        'grill',
        'hamburger',
      ],
    ),
    Category(
      icon: MyIcons.italian,
      title: 'Italian',
      color: MyColors.orangeColor,
      searchTerms: <String>[
        'grill',
        'hamburger',
      ],
    ),
    Category(
      icon: MyIcons.chocolate,
      title: 'Chocolate',
      color: MyColors.redColor,
      searchTerms: <String>[
        'grill',
        'hamburger',
      ],
    ),
    Category(
      icon: MyIcons.cheese,
      title: 'Cheese',
      color: MyColors.orangeColor,
      searchTerms: <String>[
        'grill',
        'hamburger',
      ],
    ),
    Category(
      icon: MyIcons.fruit,
      title: 'Fruit',
      color: MyColors.greenColor,
      searchTerms: <String>[
        'grill',
        'hamburger',
      ],
    ),
  ].obs;

  List<Category> get categories => _categories;
}
