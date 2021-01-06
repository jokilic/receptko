import 'package:flutter/material.dart';

import '../../constants/text_styles.dart';

class RecipeGridWidget extends StatelessWidget {
  final Color color;
  final String text;
  final String icon;

  RecipeGridWidget({
    @required this.color,
    @required this.text,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      width: 135.0,
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 60.0,
            height: 60.0,
            color: color,
          ),
          SizedBox(height: 16.0),
          Text(
            text,
            style: MyTextStyles.recipeGrid.copyWith(color: color),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
