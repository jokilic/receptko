import 'package:flutter/material.dart';

import '../constants/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Text(
          'Dobrodošao, Josipe',
          style: TextStyles.headlineText,
        ),
      ),
    );
  }
}
