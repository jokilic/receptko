import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../constants/icons.dart';
import '../../constants/text_styles.dart';

class SearchDialog extends StatelessWidget {
  final String title;
  final String image;
  final String hintText;
  final String hintIcon;
  final List<String> chosenControllerList;
  final TextEditingController chosenTextController;

  final Function setJoinedValues;

  SearchDialog({
    @required this.title,
    @required this.image,
    @required this.setJoinedValues,
    @required this.hintText,
    @required this.hintIcon,
    @required this.chosenControllerList,
    @required this.chosenTextController,
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
              height: Get.height * 0.5,
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
                          image,
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
                    TextField(
                      onSubmitted: (value) {
                        if (value.isNotEmpty) {
                          chosenControllerList.add(value.trim());
                          chosenTextController.clear();
                          final String joinedValues =
                              chosenControllerList.join(', ');
                          setJoinedValues(joinedValues);
                        }
                      },
                      controller: chosenTextController,
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(
                        color: MyColors.textColor,
                        fontWeight: FontWeight.w600,
                      ),
                      cursorColor: MyColors.textColor,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            hintIcon,
                            width: 30.0,
                            color: MyColors.textColor.withOpacity(0.8),
                          ),
                        ),
                        hintText: hintText,
                        hintStyle: TextStyle(
                          color: MyColors.textColor.withOpacity(0.4),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: MyColors.textColor),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        filled: false,
                        fillColor: MyColors.backgroundColor,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: MyColors.textColor),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: MyColors.textColor),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Obx(
                      () => ListView.builder(
                        itemCount: chosenControllerList.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 8.0),
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    chosenControllerList[index],
                                    style: MyTextStyles.searchDialogText,
                                  ),
                                ),
                                SizedBox(width: 12.0),
                                GestureDetector(
                                  onTap: () {
                                    chosenControllerList.removeAt(index);
                                    final String joinedValues =
                                        chosenControllerList.join(', ');
                                    setJoinedValues(joinedValues);
                                  },
                                  child: Image.asset(
                                    MyIcons.delete,
                                    height: 44.0,
                                    width: 44.0,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
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
