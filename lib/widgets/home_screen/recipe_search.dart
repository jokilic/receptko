import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/icons.dart';
import '../header_widget.dart';

class RecipeSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(title: 'What would you like to Cook?'),
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
