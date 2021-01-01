import 'package:flutter/material.dart';

import '../constants/text_styles.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Search here',
          style: MyTextStyles.headline1Text,
        ),
      ),
    );
  }
}
