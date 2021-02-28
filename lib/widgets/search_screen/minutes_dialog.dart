import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../constants/icons.dart';
import '../../constants/text_styles.dart';

class MinutesDialog extends StatelessWidget {
  final String title;
  final String icon;
  final int minutes;
  final Function minusPressed;
  final Function plusPressed;

  MinutesDialog({
    @required this.title,
    @required this.icon,
    @required this.minutes,
    @required this.minusPressed,
    @required this.plusPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: MyColors.bodyColor,
              ),
              height: Get.height * 0.25,
              width: Get.width * 0.8,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          icon,
                          height: 56.0,
                          width: 56.0,
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Text(
                            title,
                            style: MyTextStyles.searchDialogHeadingText,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 36.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: minusPressed,
                          child: Image.asset(
                            MyIcons.minus,
                            height: 50.0,
                            width: 50.0,
                          ),
                        ),
                        SizedBox(width: 24.0),
                        Text(
                          '$minutes',
                          style: MyTextStyles.searchDialogMinuteText,
                        ),
                        SizedBox(width: 24.0),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: plusPressed,
                          child: Image.asset(
                            MyIcons.plus,
                            height: 50.0,
                            width: 50.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -24,
              right: -24,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: Get.back,
                child: Image.asset(
                  MyIcons.delete,
                  height: 60.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}