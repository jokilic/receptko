import 'package:flutter/material.dart';

import './screens/screens.dart';

void main() => runApp(Kuharko());

class Kuharko extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuharko',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'VisbyRound',
      ),
      initialRoute: BottomNavigation.routeName,
      routes: {
        BottomNavigation.routeName: (context) => BottomNavigation(),
        CategoriesScreen.routeName: (context) => CategoriesScreen(),
        FavoritesScreen.routeName: (context) => FavoritesScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        RecipeScreen.routeName: (context) => RecipeScreen(),
        ResultsScreen.routeName: (context) => ResultsScreen(),
        SearchScreen.routeName: (context) => SearchScreen(),
      },
    );
  }
}
