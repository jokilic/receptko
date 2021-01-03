import 'package:flutter/material.dart';

import '../header_widget.dart';
import '../search_widget.dart';

class RecipeSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(title: 'What would you like to Cook?'),
        SizedBox(height: 16.0),
        SearchWidget(),
      ],
    );
  }
}
