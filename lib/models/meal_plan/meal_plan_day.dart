class MealPlanDay {
  List<Meals> meals;
  Nutrients nutrients;

  MealPlanDay({this.meals, this.nutrients});

  MealPlanDay.fromJson(Map<String, dynamic> json) {
    final List<dynamic> mealsList = json['meals'];
    meals = mealsList.map((meal) => Meals.fromJson(meal)).toList();
    nutrients = Nutrients.fromJson(json['nutrients']);
  }
}

class Meals {
  int id;
  String imageType;
  String title;
  int readyInMinutes;
  int servings;
  String sourceUrl;

  Meals({
    this.id,
    this.imageType,
    this.title,
    this.readyInMinutes,
    this.servings,
    this.sourceUrl,
  });

  Meals.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageType = json['imageType'];
    title = json['title'];
    readyInMinutes = json['readyInMinutes'];
    servings = json['servings'];
    sourceUrl = json['sourceUrl'];
  }
}

class Nutrients {
  double calories;
  double protein;
  double fat;
  double carbohydrates;

  Nutrients({
    this.calories,
    this.protein,
    this.fat,
    this.carbohydrates,
  });

  Nutrients.fromJson(Map<String, dynamic> json) {
    calories = json['calories'];
    protein = json['protein'];
    fat = json['fat'];
    carbohydrates = json['carbohydrates'];
  }
}
