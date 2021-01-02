import 'package:flutter/material.dart';

import './screens/screens.dart';

void main() {
  runApp(Receptko());
}

class Receptko extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Receptko',
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
        SearchScreen.routeName: (context) => SearchScreen(),
      },
    );
  }
}
