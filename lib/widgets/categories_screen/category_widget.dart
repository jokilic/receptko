import 'package:dough/dough.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../constants/shadows.dart';
import '../../constants/text_styles.dart';
import '../../controllers/theme_controller.dart';

class CategoryWidget extends StatelessWidget {
  final String icon;
  final String title;
  final Color color;
  final Function onTap;

  const CategoryWidget({
    @required this.icon,
    @required this.title,
    @required this.color,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool _isDark = Get.find<ThemeController>().darkTheme;

    return InkWell(
      onTap: onTap,
      child: PressableDough(
        child: Container(
          margin: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: _isDark ? DarkColors.bodyColor : LightColors.bodyColor,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: Shadows.myShadow,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                icon,
                width: 64.0,
                height: 64.0,
              ),
              const SizedBox(height: 20.0),
              Text(
                title,
                style: MyTextStyles.categoryTitle.copyWith(color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
