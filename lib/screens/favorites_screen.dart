import 'package:flutter/material.dart';

import '../constants/text_styles.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Favorites here',
          style: MyTextStyles.headline1Text,
        ),
      ),
    );
  }
}
