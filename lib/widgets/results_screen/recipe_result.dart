import 'package:flutter/material.dart';

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
        margin: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: 150.0,
        decoration: BoxDecoration(
          color: MyColors.bodyColor,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: Shadows.myShadow,
        ),
        child: Row(
          children: [
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
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style:
                              MyTextStyles.resultTitle.copyWith(color: color),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          description,
                          style: MyTextStyles.resultDescription.copyWith(
                            color: MyColors.textColor.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: clockColor,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 6.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                MyIcons.clock,
                                color: MyColors.backgroundColor,
                                height: 16.0,
                                width: 16.0,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                '$minutes min',
                                style: MyTextStyles.resultMinutes,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            if (isVegan)
                              Padding(
                                padding: EdgeInsets.only(right: 4.0),
                                child: Image.asset(
                                  MyIcons.vegan,
                                  height: 22.0,
                                  width: 22.0,
                                ),
                              ),
                            if (isHealthy)
                              Padding(
                                padding: EdgeInsets.only(right: 4.0),
                                child: Image.asset(
                                  MyIcons.healthy,
                                  height: 22.0,
                                  width: 22.0,
                                ),
                              ),
                            if (isCheap)
                              Padding(
                                padding: EdgeInsets.only(right: 4.0),
                                child: Image.asset(
                                  MyIcons.cheap,
                                  height: 22.0,
                                  width: 22.0,
                                ),
                              ),
                            if (isPopular)
                              Padding(
                                padding: EdgeInsets.only(right: 4.0),
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
