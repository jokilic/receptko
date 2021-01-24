import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/shadows.dart';
import '../../constants/text_styles.dart';

class IngredientWidget extends StatelessWidget {
  final String image;
  final String title;
  final double amount;
  final String unit;
  final Function onTap;

  const IngredientWidget({
    @required this.image,
    @required this.title,
    @required this.amount,
    @required this.unit,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: 140.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: MyTextStyles.recipeIngredientName.copyWith(
                    color: MyColors.textColor.withOpacity(0.8),
                  ),
                ),
                Text(
                  '$amount $unit',
                  style: MyTextStyles.recipeIngredientAmount.copyWith(
                    color: MyColors.textColor.withOpacity(0.4),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
