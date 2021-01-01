import 'package:flutter/material.dart';

import '../constants/text_styles.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Categories here',
          style: MyTextStyles.headline1Text,
        ),
      ),
    );
  }
}
