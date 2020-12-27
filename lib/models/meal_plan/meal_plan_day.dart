class MealPlanDay {
  List<MealsDay> meals;
  NutrientsDay nutrients;

  MealPlanDay({this.meals, this.nutrients});

  MealPlanDay.fromJson(Map<String, dynamic> json) {
    meals = json['meals'] as List<MealsDay>;
    nutrients = json['nutrients'] as NutrientsDay;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['meals'] = meals;
    data['nutrients'] = nutrients;

    return data;
  }
}

class MealsDay {
  int id;
  String imageType;
  String title;
  int readyInMinutes;
  int servings;
  String sourceUrl;

  MealsDay({
    this.id,
    this.imageType,
    this.title,
    this.readyInMinutes,
    this.servings,
    this.sourceUrl,
  });

  MealsDay.fromJson(Map<String, dynamic> json) {
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

class NutrientsDay {
  double calories;
  double protein;
  double fat;
  double carbohydrates;

  NutrientsDay({
    this.calories,
    this.protein,
    this.fat,
    this.carbohydrates,
  });

  NutrientsDay.fromJson(Map<String, dynamic> json) {
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
