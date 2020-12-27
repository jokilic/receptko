class MenuItem {
  int id;
  String title;
  double price;
  int likes;
  List<String> badges;
  MenuItemNutrition nutrition;
  String servingSize;
  String readableServingSize;
  int numberOfServings;
  double spoonacularScore;
  List<String> breadcrumbs;
  String imageType;
  String generatedText;
  String restaurantChain;
  List<String> images;

  MenuItem({
    this.id,
    this.title,
    this.price,
    this.likes,
    this.badges,
    this.nutrition,
    this.servingSize,
    this.readableServingSize,
    this.numberOfServings,
    this.spoonacularScore,
    this.breadcrumbs,
    this.imageType,
    this.generatedText,
    this.restaurantChain,
    this.images,
  });

  MenuItem.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    title = json['title'] as String;
    price = json['price'] as double;
    likes = json['likes'] as int;
    badges = json['badges'] as List<String>;
    nutrition = json['nutrition'] as MenuItemNutrition;
    servingSize = json['servingSize'] as String;
    readableServingSize = json['readableServingSize'] as String;
    numberOfServings = json['numberOfServings'] as int;
    spoonacularScore = json['spoonacularScore'] as double;
    breadcrumbs = json['breadcrumbs'] as List<String>;
    imageType = json['imageType'] as String;
    generatedText = json['generatedText'] as String;
    restaurantChain = json['restaurantChain'] as String;
    images = json['images'] as List<String>;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['likes'] = likes;
    data['badges'] = badges;
    data['nutrition'] = nutrition;
    data['servingSize'] = servingSize;
    data['readableServingSize'] = readableServingSize;
    data['numberOfServings'] = numberOfServings;
    data['spoonacularScore'] = spoonacularScore;
    data['breadcrumbs'] = breadcrumbs;
    data['imageType'] = imageType;
    data['generatedText'] = generatedText;
    data['restaurantChain'] = restaurantChain;
    data['images'] = images;

    return data;
  }
}

class MenuItemNutrition {
  List<MenuItemNutrients> nutrients;
  MenuItemCaloricBreakdown caloricBreakdown;
  int calories;
  String fat;
  String protein;
  String carbs;

  MenuItemNutrition({
    this.nutrients,
    this.caloricBreakdown,
    this.calories,
    this.fat,
    this.protein,
    this.carbs,
  });

  MenuItemNutrition.fromJson(Map<String, dynamic> json) {
    nutrients = json['nutrients'] as List<MenuItemNutrients>;
    caloricBreakdown = json['caloricBreakdown'] as MenuItemCaloricBreakdown;
    calories = json['calories'] as int;
    fat = json['fat'] as String;
    protein = json['protein'] as String;
    carbs = json['carbs'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['nutrients'] = nutrients;
    data['caloricBreakdown'] = caloricBreakdown;
    data['calories'] = calories;
    data['fat'] = fat;
    data['protein'] = protein;
    data['carbs'] = carbs;

    return data;
  }
}

class MenuItemNutrients {
  String title;
  int amount;
  String unit;
  double percentOfDailyNeeds;

  MenuItemNutrients({
    this.title,
    this.amount,
    this.unit,
    this.percentOfDailyNeeds,
  });

  MenuItemNutrients.fromJson(Map<String, dynamic> json) {
    title = json['title'] as String;
    amount = json['amount'] as int;
    unit = json['unit'] as String;
    percentOfDailyNeeds = json['percentOfDailyNeeds'] as double;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['title'] = title;
    data['amount'] = amount;
    data['unit'] = unit;
    data['percentOfDailyNeeds'] = percentOfDailyNeeds;

    return data;
  }
}

class MenuItemCaloricBreakdown {
  int percentProtein;
  int percentFat;
  int percentCarbs;

  MenuItemCaloricBreakdown(
      {this.percentProtein, this.percentFat, this.percentCarbs});

  MenuItemCaloricBreakdown.fromJson(Map<String, dynamic> json) {
    percentProtein = json['percentProtein'] as int;
    percentFat = json['percentFat'] as int;
    percentCarbs = json['percentCarbs'] as int;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['percentProtein'] = percentProtein;
    data['percentFat'] = percentFat;
    data['percentCarbs'] = percentCarbs;

    return data;
  }
}
