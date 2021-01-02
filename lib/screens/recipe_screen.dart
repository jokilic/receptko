import 'package:flutter/material.dart';

import '../constants/text_styles.dart';

class RecipeScreen extends StatelessWidget {
  static const routeName = '/recipe-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Recipe here',
          style: MyTextStyles.headline1Text,
        ),
      ),
    );
  }
}
