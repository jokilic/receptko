import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../controllers/category_controller.dart';
import '../models/category.dart';
import '../widgets/header_widget.dart';
import '../widgets/categories_screen/category_widget.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories-screen';

  @override
  Widget build(BuildContext context) {
    final CategoryController _categoryController =
        Get.put(CategoryController());

    return Scaffold(
      backgroundColor: MyColors.bodyColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 36.0),
                HeaderWidget(title: 'Search by category'),
                SizedBox(height: 24.0),
                GridView.builder(
                  itemCount: _categoryController.categories.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    Category category = _categoryController.categories[index];

                    return CategoryWidget(
                      color: category.color,
                      icon: category.icon,
                      title: category.title,
                      onTap: () => print('Pressed: ${category.title}'),
                    );
                  },
                ),
                SizedBox(height: 24.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
