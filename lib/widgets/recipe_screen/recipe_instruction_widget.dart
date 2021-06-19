import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../controllers/theme_controller.dart';

class RecipeInstructionWidget extends StatelessWidget {
  final int number;
  final String step;

  const RecipeInstructionWidget({
    @required this.number,
    @required this.step,
  });

  @override
  Widget build(BuildContext context) {
    final bool _isDark = Get.find<ThemeController>().darkTheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 36.0,
            margin: const EdgeInsets.only(left: 8.0),
            child: Text(
              '$number',
              style: MyTextStyles.recipeDirectionNumber,
            ),
          ),
          const SizedBox(width: 4.0),
          Container(
            width: 4.0,
            height: 36.0,
            color: _isDark ? DarkColors.greenColor : LightColors.greenColor,
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
