import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/icons.dart';
import '../../constants/text_styles.dart';

class RecipeSearch extends StatelessWidget {
  const RecipeSearch({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 60.0, bottom: 16.0),
          child: Text(
            'What would you like to Cook?',
            style: TextStyles.headlineText,
          ),
        ),
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
              borderSide: BorderSide(color: MyColors.textField),
              borderRadius: BorderRadius.circular(16.0),
            ),
            filled: true,
            fillColor: MyColors.textField,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.textField),
              borderRadius: BorderRadius.circular(16.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyColors.textField),
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        ),
      ],
    );
  }
}
