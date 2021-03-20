import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/images.dart';
import '../constants/text_styles.dart';
import '../controllers/spoonacular_controller.dart';

class HeaderWidget extends StatefulWidget {
  final String title;
  final bool chefOnly;
  final String subtitle;
  final bool hasSubtitle;
  final bool errorHeader;

  const HeaderWidget({
    this.title,
    this.chefOnly = false,
    this.subtitle,
    this.hasSubtitle = false,
    this.errorHeader = false,
  });

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _chefAnimationController;
  Animation<dynamic> _curve;

  @override
  void initState() {
    super.initState();
    _chefAnimationController = AnimationController(
      duration: const Duration(milliseconds: 1600),
      vsync: this,
    );
    _curve = CurvedAnimation(
      parent: _chefAnimationController,
      curve: Curves.easeInOutBack,
    );

    _chefAnimationController.addStatusListener(
      (AnimationStatus status) async {
        if (status == AnimationStatus.completed) {
          await Future<Duration>.delayed(const Duration(seconds: 3));
          _chefAnimationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          await Future<Duration>.delayed(const Duration(seconds: 3));
          _chefAnimationController.forward();
        }
      },
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
    final SpoonacularController _spoonacularController =
        Get.find<SpoonacularController>();

    if (widget.chefOnly) {
      return Center(
        child: RotationTransition(
          turns: Tween<double>(begin: 0.0, end: 0.03).animate(_curve),
          child: GestureDetector(
            onLongPress: () =>
                _spoonacularController.audioPlayer.play('boom.wav'),
            behavior: HitTestBehavior.translucent,
            child: Image.asset(
              MyImages.chefBig,
              width: Get.width * 0.45,
            ),
          ),
        ),
      );
    }

    if (widget.errorHeader) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: Get.width * 0.3,
                child: Text(
                  widget.title,
                  style: MyTextStyles.headline2Text,
                ),
              ),
              if (widget.hasSubtitle) ...<Widget>[
                const SizedBox(height: 4.0),
                SizedBox(
                  width: Get.width * 0.3,
                  child: Text(
                    widget.subtitle,
                    style: MyTextStyles.headline3Text,
                  ),
                ),
              ],
            ],
          ),
          RotationTransition(
            turns: Tween<double>(begin: 0.0, end: 0.03).animate(_curve),
            child: GestureDetector(
              onLongPress: () =>
                  _spoonacularController.audioPlayer.play('boom.wav'),
              behavior: HitTestBehavior.translucent,
              child: Image.asset(
                MyImages.chefBig,
                width: Get.width * 0.25,
              ),
            ),
          ),
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: Get.width * 0.5,
              child: Text(
                widget.title,
                style: MyTextStyles.headline1Text,
              ),
            ),
            if (widget.hasSubtitle) ...<Widget>[
              const SizedBox(height: 8.0),
              SizedBox(
                width: Get.width * 0.5,
                child: Text(
                  widget.subtitle,
                  style: MyTextStyles.headline3Text,
                ),
              ),
            ],
          ],
        ),
        RotationTransition(
          turns: Tween<double>(begin: 0.0, end: 0.03).animate(_curve),
          child: GestureDetector(
            onLongPress: () =>
                _spoonacularController.audioPlayer.play('boom.wav'),
            behavior: HitTestBehavior.translucent,
            child: Image.asset(
              MyImages.chefBig,
              width: Get.width * 0.35,
            ),
          ),
        ),
      ],
    );
  }
}
