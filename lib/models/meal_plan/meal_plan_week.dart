class MealPlanWeek {
  Week week;

  MealPlanWeek({this.week});

  MealPlanWeek.fromJson(Map<String, dynamic> json) {
    week = json['week'] != null ? new Week.fromJson(json['week']) : null;
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
    monday = json['monday'] != null ? new Day.fromJson(json['monday']) : null;
    tuesday =
        json['tuesday'] != null ? new Day.fromJson(json['tuesday']) : null;
    wednesday =
        json['wednesday'] != null ? new Day.fromJson(json['wednesday']) : null;
    thursday =
        json['thursday'] != null ? new Day.fromJson(json['thursday']) : null;
    friday = json['friday'] != null ? new Day.fromJson(json['friday']) : null;
    saturday =
        json['saturday'] != null ? new Day.fromJson(json['saturday']) : null;
    sunday = json['sunday'] != null ? new Day.fromJson(json['sunday']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.monday != null) {
      data['monday'] = this.monday.toJson();
    }
    if (this.tuesday != null) {
      data['tuesday'] = this.tuesday.toJson();
    }
    if (this.wednesday != null) {
      data['wednesday'] = this.wednesday.toJson();
    }
    if (this.thursday != null) {
      data['thursday'] = this.thursday.toJson();
    }
    if (this.friday != null) {
      data['friday'] = this.friday.toJson();
    }
    if (this.saturday != null) {
      data['saturday'] = this.saturday.toJson();
    }
    if (this.sunday != null) {
      data['sunday'] = this.sunday.toJson();
    }
    return data;
  }
}

class Day {
  List<WeekMeals> meals;
  WeekNutrients nutrients;

  Day({this.meals, this.nutrients});

  Day.fromJson(Map<String, dynamic> json) {
    if (json['meals'] != null) {
      meals = new List<WeekMeals>();
      json['meals'].forEach((v) {
        meals.add(new WeekMeals.fromJson(v));
      });
    }
    nutrients = json['nutrients'] != null
        ? new WeekNutrients.fromJson(json['nutrients'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.meals != null) {
      data['meals'] = this.meals.map((v) => v.toJson()).toList();
    }
    if (this.nutrients != null) {
      data['nutrients'] = this.nutrients.toJson();
    }
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['imageType'] = this.imageType;
    data['title'] = this.title;
    data['readyInMinutes'] = this.readyInMinutes;
    data['servings'] = this.servings;
    data['sourceUrl'] = this.sourceUrl;
    return data;
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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['calories'] = this.calories;
    data['protein'] = this.protein;
    data['fat'] = this.fat;
    data['carbohydrates'] = this.carbohydrates;
    return data;
  }
}
