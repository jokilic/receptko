import 'package:flutter/widgets.dart';

class Category {
  final String icon;
  final String title;
  final Color color;
  final List<String> searchTerms;

  Category({
    @required this.icon,
    @required this.title,
    @required this.color,
    @required this.searchTerms,
  });
}
