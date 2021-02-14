import 'package:flutter/painting.dart';

import './colors.dart';

class Shadows {
  static final List<BoxShadow> myShadow = <BoxShadow>[
    BoxShadow(
      color: MyColors.textColor.withOpacity(0.1),
      spreadRadius: 2,
      blurRadius: 10,
      offset: const Offset(3, 3),
    ),
  ];
}
