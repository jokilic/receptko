import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';
import './header_widget.dart';

class ErrorDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.1,
        vertical: Get.height * 0.3,
      ),
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        color: MyColors.bodyColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              HeaderWidget(
                title: 'Problems fetching recipes...',
                errorHeader: true,
              ),
              SizedBox(height: 24.0),
              Text(
                'Sadly, the limit for fetching recipes has been reached.',
                style: MyTextStyles.errorDialogText,
              ),
              SizedBox(height: 16.0),
              Text(
                'Please try again tomorrow, when the quota gets reset.',
                style: MyTextStyles.errorDialogText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
