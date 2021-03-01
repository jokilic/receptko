import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class RecipeInstructionWidget extends StatelessWidget {
  final int number;
  final String step;

  const RecipeInstructionWidget({
    @required this.number,
    @required this.step,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$number',
            style: MyTextStyles.recipeDirectionNumber,
          ),
          const SizedBox(width: 16.0),
          Container(
            width: 4.0,
            height: 36.0,
            color: MyColors.greenColor,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Text(
              step,
              style: MyTextStyles.recipeDirectionText,
            ),
          ),
        ],
      ),
    );
  }
}
