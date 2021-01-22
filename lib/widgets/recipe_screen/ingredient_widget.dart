import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/shadows.dart';
import '../../constants/text_styles.dart';

class IngredientWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('Open info about the ingredient'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 140.0,
            height: 140.0,
            margin: EdgeInsets.only(right: 24.0),
            decoration: BoxDecoration(
              boxShadow: Shadows.myShadow,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                'https://spoonacular.com/cdn/ingredients_100x100/olive-oil.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'olive oil',
            style: MyTextStyles.recipeIngredientName.copyWith(
              color: MyColors.textColor.withOpacity(0.8),
            ),
          ),
          Text(
            '3Tbs',
            style: MyTextStyles.recipeIngredientAmount.copyWith(
              color: MyColors.textColor.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
