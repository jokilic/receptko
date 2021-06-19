import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import '../controllers/theme_controller.dart';
import './colors.dart';

class Shadows {
  static List<BoxShadow> get myShadow {
    final bool _isDark = Get.find<ThemeController>().darkTheme;

    return <BoxShadow>[
      BoxShadow(
        color: _isDark ? DarkColors.textColor.withOpacity(0.1) : LightColors.textColor.withOpacity(0.1),
        spreadRadius: 2,
        blurRadius: 10,
        offset: const Offset(3, 3),
      ),
    ];
  }
}
