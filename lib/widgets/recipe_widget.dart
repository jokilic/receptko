import 'package:flutter/material.dart';

import '../constants/icons.dart';
import '../constants/images.dart';
import '../constants/shadows.dart';
import '../constants/text_styles.dart';

class RecipeWidget extends StatelessWidget {
  final String image;
  final double score;
  final String title;
  final Color color;
  final Function onTap;

  const RecipeWidget({
    @required this.image,
    this.score,
    @required this.title,
    @required this.onTap,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: 175.0,
            decoration: BoxDecoration(
              color: color.withOpacity(0.15),
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(12.0, 80.0, 12.0, 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (score != null)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          MyIcons.star,
                          width: 24.0,
                          height: 24.0,
                          color: color,
                        ),
                        SizedBox(width: 6.0),
                        Padding(
                          padding: EdgeInsets.only(top: 1.0),
                          child: Text(
                            '${score.toStringAsFixed(2)} / 5',
                            style: MyTextStyles.overviewRecipeScore
                                .copyWith(color: color),
                          ),
                        ),
                      ],
                    ),
                  SizedBox(height: 4.0),
                  Text(
                    title,
                    style:
                        MyTextStyles.overviewRecipeTitle.copyWith(color: color),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -55.0,
            child: Container(
              width: 110.0,
              height: 110.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: Shadows.myShadow,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: image == null
                    ? Image.asset(
                        MyImages.foodPlaceholder,
                        fit: BoxFit.cover,
                      )
                    : Image.network(
                        image,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
