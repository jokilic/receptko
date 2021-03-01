import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/images.dart';
import '../constants/text_styles.dart';

class HeaderWidget extends StatefulWidget {
  final String title;
  final bool chefOnly;
  final String subtitle;
  final bool hasSubtitle;

  HeaderWidget({
    this.title,
    this.chefOnly = false,
    this.subtitle,
    this.hasSubtitle = false,
  });

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget>
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

    _chefAnimationController.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        await Future.delayed(Duration(seconds: 3));
        _chefAnimationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        await Future.delayed(Duration(seconds: 3));
        _chefAnimationController.forward();
      }
    });

    _chefAnimationController.forward();
  }

  @override
  void dispose() {
    _chefAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.chefOnly)
      return Center(
        child: RotationTransition(
          turns: Tween(begin: 0.0, end: 0.03).animate(_curve),
          child: Image.asset(
            MyImages.chefBig,
            width: Get.width * 0.45,
          ),
        ),
      );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width * 0.5,
              child: Text(
                widget.title,
                style: MyTextStyles.headline1Text,
              ),
            ),
            if (widget.hasSubtitle) ...[
              SizedBox(height: 8.0),
              Container(
                width: Get.width * 0.5,
                child: Text(
                  widget.subtitle,
                  style: MyTextStyles.headline3Text,
                ),
              ),
            ]
          ],
        ),
        RotationTransition(
          turns: Tween(begin: 0.0, end: 0.03).animate(_curve),
          child: Image.asset(
            MyImages.chefBig,
            width: Get.width * 0.35,
          ),
        ),
      ],
    );
  }
}
