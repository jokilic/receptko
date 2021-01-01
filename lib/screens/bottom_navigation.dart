import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../models/navigation_item.dart';

class BottomNavigation extends StatefulWidget {
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
        children: [
          for (final NavigationItem navigationItem in NavigationItem.items)
            navigationItem.page,
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16.0),
          topLeft: Radius.circular(16.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: MyColors.headlinesColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _currentIndex,
          onTap: (int index) => setState(() => _currentIndex = index),
          items: [
            for (final NavigationItem navigationItem in NavigationItem.items)
              BottomNavigationBarItem(
                icon: navigationItem.icon,
                label: navigationItem.title,
              ),
          ],
        ),
      ),
    );
  }
}
