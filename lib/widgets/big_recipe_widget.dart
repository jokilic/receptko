import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/images.dart';
import '../constants/text_styles.dart';
import '../controllers/theme_controller.dart';

class BigRecipeWidget extends StatelessWidget {
  final Function onTap;
  final String image;
  final String title;
  final String mealType;
  final double score;

  const BigRecipeWidget({
    @required this.onTap,
    @required this.image,
    @required this.title,
    @required this.mealType,
    @required this.score,
  });

  @override
  Widget build(BuildContext context) {
    final bool _isDark = Get.find<ThemeController>().darkTheme;

    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: Get.height * 0.45,
        width: Get.width * 0.65,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: image == null
                  ? Image.asset(
                      MyImages.foodPlaceholder,
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )
                  : Image.network(
                      image,
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
            ),
            Container(
              height: 120.0,
              width: double.infinity,
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: _isDark ? DarkColors.bodyColor : LightColors.bodyColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              title,
                              style: MyTextStyles.bigRecipeWidgetTitle,
                            ),
                            const SizedBox(height: 4.0),
                            Text(
                              mealType,
                              style: MyTextStyles.bigRecipeWidgetSubtitle.copyWith(
                                color: _isDark
                                    ? DarkColors.textColor.withOpacity(0.4)
                                    : LightColors.textColor.withOpacity(0.4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          MyIcons.favoriteOutline,
                          width: 44.0,
                          height: 44.0,
                          color: _isDark ? DarkColors.textColor : LightColors.textColor,
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          '$score',
                          style: MyTextStyles.bigRecipeWidgetRating,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
