import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../models/navigation_item.dart';

class BottomNavigation extends StatefulWidget {
  static const String routeName = '/bottom-navigation';

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          for (final NavigationItem navigationItem in NavigationItem.items)
            navigationItem.page,
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80.0,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16.0),
            topLeft: Radius.circular(16.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: MyColors.textColor,
            selectedItemColor: MyColors.orangeColor,
            unselectedItemColor: MyColors.purpleColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _currentIndex,
            onTap: (int index) => setState(() => _currentIndex = index),
            items: <BottomNavigationBarItem>[
              for (int index = 0; index < NavigationItem.items.length; index++)
                BottomNavigationBarItem(
                  icon: _currentIndex == index
                      ? NavigationItem.items[index].iconActive
                      : NavigationItem.items[index].icon,
                  label: NavigationItem.items[index].title,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
