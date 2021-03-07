import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../screens/screens.dart';

class NavigationItem {
  final Widget page;
  final String title;
  final Widget icon;
  final Widget iconActive;

  NavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
    @required this.iconActive,
  });

  static List<NavigationItem> get items => <NavigationItem>[
        NavigationItem(
          page: HomeScreen(),
          icon: Image.asset(
            MyIcons.home,
            width: 44.0,
            height: 44.0,
            color: MyColors.backgroundColor.withOpacity(0.2),
          ),
          iconActive: Image.asset(
            MyIcons.home,
            width: 44.0,
            height: 44.0,
            color: MyColors.backgroundColor,
          ),
          title: 'Home',
        ),
        NavigationItem(
          page: SearchScreen(),
          icon: Image.asset(
            MyIcons.search,
            width: 44.0,
            height: 44.0,
            color: MyColors.backgroundColor.withOpacity(0.2),
          ),
          iconActive: Image.asset(
            MyIcons.search,
            width: 44.0,
            height: 44.0,
            color: MyColors.backgroundColor,
          ),
          title: 'Search',
        ),
        NavigationItem(
          page: CategoriesScreen(),
          icon: Image.asset(
            MyIcons.categories,
            width: 44.0,
            height: 44.0,
            color: MyColors.backgroundColor.withOpacity(0.2),
          ),
          iconActive: Image.asset(
            MyIcons.categories,
            width: 44.0,
            height: 44.0,
            color: MyColors.backgroundColor,
          ),
          title: 'Categories',
        ),
        NavigationItem(
          page: FavoritesScreen(),
          icon: Image.asset(
            MyIcons.heart,
            width: 44.0,
            height: 44.0,
            color: MyColors.backgroundColor.withOpacity(0.2),
          ),
          iconActive: Image.asset(
            MyIcons.heart,
            width: 44.0,
            height: 44.0,
            color: MyColors.backgroundColor,
          ),
          title: 'Favorites',
        ),
      ];
}
