import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class RecipeResult extends StatelessWidget {
  final Function onTap;
  final String image;
  final String title;

  const RecipeResult({
    @required this.onTap,
    @required this.image,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: 130.0,
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                padding: EdgeInsets.all(20.0),
                child: Text(
                  title,
                  style: MyTextStyles.resultTitle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
