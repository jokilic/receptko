import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/text_styles.dart';
import '../widgets/header_widget.dart';
import '../widgets/kuharko_button.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = '/search-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bodyColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 36.0),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: HeaderWidget(title: 'Ask Kuharko Marko...'),
                ),
                SizedBox(height: 56.0),
                RichText(
                  text: TextSpan(
                    text: 'I want recipes from ',
                    style: MyTextStyles.searchText,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'ALL',
                        style: MyTextStyles.searchDynamicText
                            .copyWith(color: MyColors.randomColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print('Hej'),
                      ),
                      TextSpan(
                        text: ' cuisines and I want the food to be ',
                      ),
                      TextSpan(
                        text: 'VEGAN',
                        style: MyTextStyles.searchDynamicText
                            .copyWith(color: MyColors.randomColor),
                      ),
                      TextSpan(
                        text: '.',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                RichText(
                  text: TextSpan(
                    text: 'I\'m ',
                    style: MyTextStyles.searchText,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'GLUTEN',
                        style: MyTextStyles.searchDynamicText
                            .copyWith(color: MyColors.randomColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print('Hej'),
                      ),
                      TextSpan(
                        text: ' intolerant, so I don\'t need those recipes.',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 36.0),
                Center(
                  child: Image.asset(
                    MyIcons.mixer,
                    height: 142.0,
                    width: 142.0,
                  ),
                ),
                SizedBox(height: 36.0),
                RichText(
                  text: TextSpan(
                    text: 'The ingredients I have in my kitchen are ',
                    style: MyTextStyles.searchText,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'TOMATO, CHEESE and RICE',
                        style: MyTextStyles.searchDynamicText
                            .copyWith(color: MyColors.randomColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print('Hej'),
                      ),
                      TextSpan(
                        text: '.',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                RichText(
                  text: TextSpan(
                    text: 'I don\'t want ',
                    style: MyTextStyles.searchText,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'PEPPER',
                        style: MyTextStyles.searchDynamicText
                            .copyWith(color: MyColors.randomColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print('Hej'),
                      ),
                      TextSpan(
                        text: ' in my food.',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 36.0),
                Center(
                  child: Image.asset(
                    MyIcons.vegetables,
                    height: 142.0,
                    width: 142.0,
                  ),
                ),
                SizedBox(height: 36.0),
                RichText(
                  text: TextSpan(
                    text: 'I\'m trying to find ',
                    style: MyTextStyles.searchText,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'BREAKFAST',
                        style: MyTextStyles.searchDynamicText
                            .copyWith(color: MyColors.randomColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print('Hej'),
                      ),
                      TextSpan(
                        text: ' meals.',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                RichText(
                  text: TextSpan(
                    text: 'I want my food to be ready in ',
                    style: MyTextStyles.searchText,
                    children: <TextSpan>[
                      TextSpan(
                        text: '25 MINUTES',
                        style: MyTextStyles.searchDynamicText
                            .copyWith(color: MyColors.randomColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => print('Hej'),
                      ),
                      TextSpan(
                        text: '.',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 56.0),
                KuharkoButton(
                  text: 'Find recipes'.toUpperCase(),
                  onTap: () => print('Implement this'),
                ),
                SizedBox(height: 56.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
