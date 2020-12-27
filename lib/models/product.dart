class Product {
  int id;
  String title;
  int price;
  int likes;
  List<String> badges;
  List<String> importantBadges;
  Nutrition nutrition;
  String servingSize;
  int numberOfServings;
  Servings servings;
  int spoonacularScore;
  List<String> breadcrumbs;
  String aisle;
  String description;
  String generatedText;
  String upc;
  String brand;
  List<ProductIngredients> ingredients;
  int ingredientCount;
  String ingredientList;
  List<String> images;
  String imageType;

  Product({
    this.id,
    this.title,
    this.price,
    this.likes,
    this.badges,
    this.importantBadges,
    this.nutrition,
    this.servingSize,
    this.numberOfServings,
    this.servings,
    this.spoonacularScore,
    this.breadcrumbs,
    this.aisle,
    this.description,
    this.generatedText,
    this.upc,
    this.brand,
    this.ingredients,
    this.ingredientCount,
    this.ingredientList,
    this.images,
    this.imageType,
  });

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    title = json['title'] as String;
    price = json['price'] as int;
    likes = json['likes'] as int;
    badges = json['badges'] as List<String>;
    importantBadges = json['importantBadges'] as List<String>;
    nutrition = json['nutrition'] as Nutrition;
    servingSize = json['serving_size'] as String;
    numberOfServings = json['number_of_servings'] as int;
    servings = json['servings'] as Servings;
    spoonacularScore = json['spoonacularScore'] as int;
    breadcrumbs = json['breadcrumbs'] as List<String>;
    aisle = json['aisle'] as String;
    description = json['description'] as String;
    generatedText = json['generatedText'] as String;
    upc = json['upc'] as String;
    brand = json['brand'] as String;
    ingredients = json['ingredients'] as List<ProductIngredients>;
    ingredientCount = json['ingredientCount'] as int;
    ingredientList = json['ingredientList'] as String;
    images = json['images'] as List<String>;
    imageType = json['imageType'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['likes'] = likes;
    data['badges'] = badges;
    data['importantBadges'] = importantBadges;
    data['nutrition'] = nutrition;
    data['serving_size'] = servingSize;
    data['number_of_servings'] = numberOfServings;
    data['servings'] = servings;
    data['spoonacularScore'] = spoonacularScore;
    data['breadcrumbs'] = breadcrumbs;
    data['aisle'] = aisle;
    data['description'] = description;
    data['generatedText'] = generatedText;
    data['upc'] = upc;
    data['brand'] = brand;
    data['ingredients'] = ingredients;
    data['ingredientCount'] = ingredientCount;
    data['ingredientList'] = ingredientList;
    data['images'] = images;
    data['imageType'] = imageType;

    return data;
  }
}

class Nutrition {
  List<Nutrients> nutrients;
  CaloricBreakdown caloricBreakdown;
  int calories;
  String fat;
  String protein;
  String carbs;

  Nutrition({
    this.nutrients,
    this.caloricBreakdown,
    this.calories,
    this.fat,
    this.protein,
    this.carbs,
  });

  Nutrition.fromJson(Map<String, dynamic> json) {
    nutrients = json['nutrients'] as List<Nutrients>;
    caloricBreakdown = json['caloricBreakdown'] as CaloricBreakdown;
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

class Nutrients {
  String title;
  double amount;
  String unit;
  double percentOfDailyNeeds;

  Nutrients({
    this.title,
    this.amount,
    this.unit,
    this.percentOfDailyNeeds,
  });

  Nutrients.fromJson(Map<String, dynamic> json) {
    title = json['title'] as String;
    amount = json['amount'] as double;
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

class CaloricBreakdown {
  double percentProtein;
  double percentFat;
  int percentCarbs;

  CaloricBreakdown({this.percentProtein, this.percentFat, this.percentCarbs});

  CaloricBreakdown.fromJson(Map<String, dynamic> json) {
    percentProtein = json['percentProtein'] as double;
    percentFat = json['percentFat'] as double;
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

class Servings {
  int number;
  double size;
  String unit;

  Servings({this.number, this.size, this.unit});

  Servings.fromJson(Map<String, dynamic> json) {
    number = json['number'] as int;
    size = json['size'] as double;
    unit = json['unit'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['number'] = number;
    data['size'] = size;
    data['unit'] = unit;

    return data;
  }
}

class ProductIngredients {
  String name;
  String safetyLevel;
  String description;

  ProductIngredients({this.name, this.safetyLevel, this.description});

  ProductIngredients.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    safetyLevel = json['safety_level'] as String;
    description = json['description'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['name'] = name;
    data['safety_level'] = safetyLevel;
    data['description'] = description;

    return data;
  }
}
