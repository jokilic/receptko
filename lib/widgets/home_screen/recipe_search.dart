import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/icons.dart';
import '../../constants/images.dart';
import '../../constants/text_styles.dart';

class RecipeSearch extends StatefulWidget {
  @override
  _RecipeSearchState createState() => _RecipeSearchState();
}

class _RecipeSearchState extends State<RecipeSearch>
    with SingleTickerProviderStateMixin {
  AnimationController _chefAnimationController;
  Animation _curve;

  @override
  void initState() {
    super.initState();
    _chefAnimationController = AnimationController(
      duration: Duration(milliseconds: 1600),
      vsync: this,
    );
    _curve = CurvedAnimation(
      parent: _chefAnimationController,
      curve: Curves.easeInOutBack,
    );

    _chefAnimationController.forward();
  }

  @override
  void dispose() {
    _chefAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * 0.5,
              child: Text(
                'What would you like to Cook?',
                style: MyTextStyles.headline1Text,
              ),
            ),
            RotationTransition(
              turns: Tween(begin: 0.0, end: 0.03).animate(_curve),
              child: Image.asset(
                MyImages.chefBig,
                width: size.width * 0.35,
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        TextField(
          textCapitalization: TextCapitalization.sentences,
          style: TextStyle(
            color: MyColors.textColor,
            fontWeight: FontWeight.w600,
          ),
          cursorColor: MyColors.textColor,
          onChanged: (value) => print(value),
          decoration: InputDecoration(
            prefixIcon: Image.asset(
              MyIcons.search,
              width: 30.0,
              color: MyColors.textColor,
            ),
            hintText: 'Search for a meal...',
            hintStyle: TextStyle(color: MyColors.textColor.withOpacity(0.4)),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.backgroundColor),
              borderRadius: BorderRadius.circular(16.0),
            ),
            filled: true,
            fillColor: MyColors.backgroundColor,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.backgroundColor),
              borderRadius: BorderRadius.circular(16.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.backgroundColor),
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        ),
      ],
    );
  }
}
