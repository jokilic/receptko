import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/text_styles.dart';

class KuharkoButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const KuharkoButton({
    @required this.text,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          height: 60.0,
          width: 280.0,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.topRight,
              radius: 4.8,
              stops: const <double>[0.0, 1.0],
              colors: <Color>[
                MyColors.randomColor,
                MyColors.randomColor,
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
                color: MyColors.backgroundColor,
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
    );
  }
}
