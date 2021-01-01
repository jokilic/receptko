import 'package:flutter/material.dart';

import '../constants/images.dart';
import '../constants/text_styles.dart';

class HeaderWidget extends StatefulWidget {
  final String title;

  HeaderWidget({@required this.title});

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

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * 0.5,
          child: Text(
            widget.title,
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
    );
  }
}
