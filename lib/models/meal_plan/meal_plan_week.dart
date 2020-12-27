class MealPlanWeek {
  Week week;

  MealPlanWeek({this.week});

  MealPlanWeek.fromJson(Map<String, dynamic> json) {
    week = json['week'] as Week;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['week'] = week;

    return data;
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
    monday = json['monday'] as Day;
    tuesday = json['tuesday'] as Day;
    wednesday = json['wednesday'] as Day;
    thursday = json['thursday'] as Day;
    friday = json['friday'] as Day;
    saturday = json['saturday'] as Day;
    sunday = json['sunday'] as Day;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['monday'] = monday;
    data['tuesday'] = tuesday;
    data['wednesday'] = wednesday;
    data['thursday'] = thursday;
    data['friday'] = friday;
    data['saturday'] = saturday;
    data['sunday'] = sunday;

    return data;
  }
}

class Day {
  List<MealsWeek> meals;
  NutrientsWeek nutrients;

  Day({this.meals, this.nutrients});

  Day.fromJson(Map<String, dynamic> json) {
    meals = json['meals'] as List<MealsWeek>;
    nutrients = json['nutrients'] as NutrientsWeek;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['meals'] = meals;
    data['nutrients'] = nutrients;

    return data;
  }
}

class MealsWeek {
  int id;
  String imageType;
  String title;
  int readyInMinutes;
  int servings;
  String sourceUrl;

  MealsWeek({
    this.id,
    this.imageType,
    this.title,
    this.readyInMinutes,
    this.servings,
    this.sourceUrl,
  });

  MealsWeek.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    imageType = json['imageType'] as String;
    title = json['title'] as String;
    readyInMinutes = json['readyInMinutes'] as int;
    servings = json['servings'] as int;
    sourceUrl = json['sourceUrl'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['imageType'] = imageType;
    data['title'] = title;
    data['readyInMinutes'] = readyInMinutes;
    data['servings'] = servings;
    data['sourceUrl'] = sourceUrl;

    return data;
  }
}

class NutrientsWeek {
  double calories;
  double protein;
  double fat;
  double carbohydrates;

  NutrientsWeek({
    this.calories,
    this.protein,
    this.fat,
    this.carbohydrates,
  });

  NutrientsWeek.fromJson(Map<String, dynamic> json) {
    calories = json['calories'] as double;
    protein = json['protein'] as double;
    fat = json['fat'] as double;
    carbohydrates = json['carbohydrates'] as double;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['calories'] = calories;
    data['protein'] = protein;
    data['fat'] = fat;
    data['carbohydrates'] = carbohydrates;

    return data;
  }
}
