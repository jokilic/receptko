import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class RecipeInstructionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '1',
            style: MyTextStyles.recipeDirectionNumber,
          ),
          SizedBox(width: 16.0),
          Container(
            width: 4.0,
            height: 36.0,
            color: MyColors.greenColor,
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Text(
              'Cat ipsum dolor sit amet, attack dog, run away and pretend to be victim. Walk on a keyboard. Human is behind a closed door, emergency! abandoned! meeooowwww!!!',
              style: MyTextStyles.recipeDirectionText,
            ),
          ),
        ],
      ),
    );
  }
}
