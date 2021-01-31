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

MealType get randomMealType {
  List<MealType> mealTypes = List.from(MealType.values);
  return (mealTypes..shuffle()).first;
}
