import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../controllers/theme_controller.dart';

class RecipeBooleanValuesWidget extends StatelessWidget {
  final Color color;
  final String icon;
  final String text;

  const RecipeBooleanValuesWidget({
    @required this.color,
    @required this.icon,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final bool _isDark = Get.find<ThemeController>().darkTheme;

    return Container(
      height: 55.0,
      width: 170.0,
      margin: const EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(36.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            icon,
            height: 32.0,
            width: 32.0,
            color: _isDark ? DarkColors.backgroundColor : LightColors.backgroundColor,
          ),
          const SizedBox(width: 16.0),
          Text(
            text,
            style: MyTextStyles.recipeBooleanValues,
          ),
        ],
      ),
    );
  }
}
