import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:receptko/screens/favorites_screen.dart';

import '../constants/icons.dart';
import '../screens/screens.dart';

class NavigationItem {
  final Widget page;
  final String title;
  final Widget icon;

  NavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<NavigationItem> get items => [
        NavigationItem(
          page: HomeScreen(),
          icon: Image.asset(
            MyIcons.home,
            width: 44.0,
            height: 44.0,
          ),
          title: 'Home',
        ),
        NavigationItem(
          page: SearchScreen(),
          icon: Image.asset(
            MyIcons.search,
            width: 44.0,
            height: 44.0,
          ),
          title: 'Search',
        ),
        NavigationItem(
          page: CategoriesScreen(),
          icon: Image.asset(
            MyIcons.categories,
            width: 44.0,
            height: 44.0,
          ),
          title: 'Categories',
        ),
        NavigationItem(
          page: FavoritesScreen(),
          icon: Image.asset(
            MyIcons.heart,
            width: 44.0,
            height: 44.0,
          ),
          title: 'Favorites',
        ),
      ];
}
