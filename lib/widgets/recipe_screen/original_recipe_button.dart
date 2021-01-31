import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/icons.dart';
import '../../constants/text_styles.dart';

class OriginalRecipeButton extends StatelessWidget {
  final Function onTap;

  OriginalRecipeButton(this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          height: 60.0,
          width: 280.0,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.topRight,
              radius: 4.8,
              stops: [0.0, 1.0],
              colors: [
                MyColors.randomColor,
                MyColors.randomColor,
              ],
            ),
            borderRadius: BorderRadius.circular(36.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                MyIcons.recipeBook,
                height: 32.0,
                width: 32.0,
                color: MyColors.backgroundColor,
              ),
              SizedBox(width: 16.0),
              Text(
                'See original recipe',
                style: MyTextStyles.recipeOriginal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
