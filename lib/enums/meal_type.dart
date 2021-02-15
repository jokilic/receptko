enum MealType {
  mainCourse,
  sideDish,
  dessert,
  appetizer,
  salad,
  bread,
  breakfast,
  soup,
  beverage,
  sauce,
  marinade,
  fingerfood,
  snack,
  drink,
}

extension ParseToString on MealType {
  String value() => toString().split('.').last;
}

String get randomMealType {
  List<MealType> mealTypes = List.from(MealType.values);
  MealType randomMealType = (mealTypes..shuffle()).first;
  String randomMealTypeString = randomMealType.value();

  if (randomMealTypeString == 'mainCourse')
    randomMealTypeString = 'main course';
  if (randomMealTypeString == 'sideDish') randomMealTypeString = 'side dish';

  return randomMealTypeString;
}
