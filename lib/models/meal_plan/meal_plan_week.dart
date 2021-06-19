class MealPlanWeek {
  Week week;

  MealPlanWeek({this.week});

  MealPlanWeek.fromJson(Map<String, dynamic> json) {
    week = Week.fromJson(json['week']);
  }
}

class Week {
  Day monday;
  Day tuesday;
  Day wednesday;
  Day thursday;
  Day friday;
  Day saturday;
  Day sunday;

  Week({
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
    this.saturday,
    this.sunday,
  });

  Week.fromJson(Map<String, dynamic> json) {
    monday = Day.fromJson(json['monday']);
    tuesday = Day.fromJson(json['tuesday']);
    wednesday = Day.fromJson(json['wednesday']);
    thursday = Day.fromJson(json['thursday']);
    friday = Day.fromJson(json['friday']);
    saturday = Day.fromJson(json['saturday']);
    sunday = Day.fromJson(json['sunday']);
  }
}

class Day {
  List<WeekMeals> meals;
  WeekNutrients nutrients;

  Day({this.meals, this.nutrients});

  Day.fromJson(Map<String, dynamic> json) {
    final List<dynamic> mealsList = json['meals'];
    meals = mealsList.map((meal) => WeekMeals.fromJson(meal)).toList();
    nutrients = WeekNutrients.fromJson(json['nutrients']);
  }
}

class WeekMeals {
  int id;
  String imageType;
  String title;
  int readyInMinutes;
  int servings;
  String sourceUrl;

  WeekMeals({
    this.id,
    this.imageType,
    this.title,
    this.readyInMinutes,
    this.servings,
    this.sourceUrl,
  });

  WeekMeals.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageType = json['imageType'];
    title = json['title'];
    readyInMinutes = json['readyInMinutes'];
    servings = json['servings'];
    sourceUrl = json['sourceUrl'];
  }
}

class WeekNutrients {
  double calories;
  double protein;
  double fat;
  double carbohydrates;

  WeekNutrients({
    this.calories,
    this.protein,
    this.fat,
    this.carbohydrates,
  });

  WeekNutrients.fromJson(Map<String, dynamic> json) {
    calories = json['calories'];
    protein = json['protein'];
    fat = json['fat'];
    carbohydrates = json['carbohydrates'];
  }
}
