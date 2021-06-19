import 'package:dough/dough.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/text_styles.dart';
import '../controllers/theme_controller.dart';

class KuharkoButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const KuharkoButton({
    @required this.text,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool _isDark = Get.find<ThemeController>().darkTheme;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Center(
        child: PressableDough(
          child: Container(
            height: 60.0,
            width: 280.0,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.topRight,
                radius: 4.8,
                stops: const <double>[0.0, 1.0],
                colors: _isDark
                    ? <Color>[
                        DarkColors.randomColor,
                        DarkColors.randomColor,
                      ]
                    : <Color>[
                        LightColors.randomColor,
                        LightColors.randomColor,
                      ],
              ),
              borderRadius: BorderRadius.circular(36.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  MyIcons.recipeBook,
                  height: 32.0,
                  width: 32.0,
                  color: LightColors.backgroundColor,
                ),
                const SizedBox(width: 16.0),
                Text(
                  text,
                  style: MyTextStyles.recipeOriginal,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
