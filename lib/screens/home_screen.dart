import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/text_styles.dart';
import '../controllers/spoonacular_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SpoonacularController _spoonacularController =
        Get.put(SpoonacularController());

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
