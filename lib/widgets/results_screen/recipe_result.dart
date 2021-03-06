import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../constants/icons.dart';
import '../../constants/shadows.dart';
import '../../constants/text_styles.dart';

class RecipeResult extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final Function onTap;
  final Color color;
  final Color clockColor;
  final int minutes;
  final bool isVegan;
  final bool isHealthy;
  final bool isCheap;
  final bool isPopular;

  const RecipeResult({
    @required this.title,
    @required this.description,
    @required this.image,
    @required this.onTap,
    @required this.color,
    @required this.clockColor,
    @required this.minutes,
    @required this.isVegan,
    @required this.isHealthy,
    @required this.isCheap,
    @required this.isPopular,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: Get.height * 0.25,
        decoration: BoxDecoration(
          color: MyColors.bodyColor,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: Shadows.myShadow,
        ),
        child: Row(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style:
                              MyTextStyles.resultTitle.copyWith(color: color),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          description,
                          style: MyTextStyles.resultDescription.copyWith(
                            color: MyColors.textColor.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: clockColor,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 6.0,
                          ),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                MyIcons.clock,
                                color: MyColors.backgroundColor,
                                height: 16.0,
                                width: 16.0,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                '$minutes min',
                                style: MyTextStyles.resultMinutes,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            if (isVegan)
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: Image.asset(
                                  MyIcons.vegan,
                                  height: 22.0,
                                  width: 22.0,
                                ),
                              ),
                            if (isHealthy)
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: Image.asset(
                                  MyIcons.healthy,
                                  height: 22.0,
                                  width: 22.0,
                                ),
                              ),
                            if (isCheap)
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: Image.asset(
                                  MyIcons.cheap,
                                  height: 22.0,
                                  width: 22.0,
                                ),
                              ),
                            if (isPopular)
                              Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: Image.asset(
                                  MyIcons.popular,
                                  height: 22.0,
                                  width: 22.0,
                                ),
                              ),
                          ],
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
