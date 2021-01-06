import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';
import '../constants/images.dart';
import '../constants/text_styles.dart';
import '../widgets/recipe_screen/recipe_grid_widget.dart';

class RecipeScreen extends StatelessWidget {
  static const routeName = '/recipe-screen';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // TODO: image
            Image.asset(
              MyImages.recipePlaceholder,
              width: double.infinity,
              height: size.height * 0.5,
              fit: BoxFit.cover,
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TODO: title
                    Text(
                      'Stuffed Chicken',
                      style: MyTextStyles.headline1Text,
                    ),
                    SizedBox(height: 24.0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          // TODO: readyInMinutes
                          RecipeGridWidget(
                            color: MyColors.greenRecipeColor,
                            icon: MyIcons.clock,
                            text: '40 MIN',
                          ),
                          SizedBox(width: 16.0),
                          // TODO: spoonacularScore / 20
                          RecipeGridWidget(
                            color: MyColors.yellowRecipeColor,
                            icon: MyIcons.popular,
                            text: '4.5 / 5',
                          ),
                          SizedBox(width: 16.0),
                          // TODO: Price per serving
                          RecipeGridWidget(
                            color: MyColors.blueRecipeColor,
                            icon: MyIcons.money,
                            text: '\$163',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.0),
                    // TODO: summary
                    Text(
                      'Cat ipsum dolor sit amet, give attitude sitting in a box. Swat at dog annoy the old grumpy cat, start a fight and then retreat to wash when i lose. Bite the neighbor\'s bratty kid leave dead animals as gifts taco cat backwards spells taco cat flop over terrorize the hundred-and-twenty-pound rottweiler and steal his bed, not sorry inspect anything brought into the house. Kitty loves pigs eat half my food and ask for more the cat was chasing the mouse play time. My slave human didn\'t give me any food so i pooped on the floor give me attention or face the wrath of my claws plop down in the middle where everybody walks scamper. Litter kitter kitty litty little kitten big roar roar feed me get video posted to internet for chasing red dot lick yarn hanging out of own butt. Eat a rug and furry furry hairs everywhere oh no human coming lie on counter don\'t get off counter cat dog hate mouse eat string barf pillow no baths hate everything paw your face to wake you up in the morning.',
                      style: MyTextStyles.recipeSummary,
                    ),
                    SizedBox(height: 24.0),
                    Text(
                      'Ingredients',
                      style: MyTextStyles.headline2Text,
                    ),
                    SizedBox(height: 24.0),
                    Text(
                      'Directions',
                      style: MyTextStyles.headline2Text,
                    ),
                    SizedBox(height: 24.0),
                    Text(
                      'Similar recipes',
                      style: MyTextStyles.headline2Text,
                    ),
                    SizedBox(height: 24.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
