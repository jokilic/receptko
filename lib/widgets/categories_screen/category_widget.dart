import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class CategoryWidget extends StatelessWidget {
  final String icon;
  final String title;
  final Color color;
  final Function onTap;

  CategoryWidget({
    @required this.icon,
    @required this.title,
    @required this.color,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          color: MyColors.bodyColor,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: MyColors.textColor.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 64.0,
              height: 64.0,
            ),
            SizedBox(height: 20.0),
            Text(
              title,
              style: MyTextStyles.categoryTitle.copyWith(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
