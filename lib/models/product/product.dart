class Product {
  int id;
  String title;
  int price;
  int likes;
  List<String> badges;
  List<String> importantBadges;
  ProductNutrition nutrition;
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
    id = json['id'];
    title = json['title'];
    price = json['price'];
    likes = json['likes'];
    badges = json['badges'].cast<String>();
    importantBadges = json['importantBadges'].cast<String>();
    nutrition = json['nutrition'] != null
        ? new ProductNutrition.fromJson(json['nutrition'])
        : null;
    servingSize = json['serving_size'];
    numberOfServings = json['number_of_servings'];
    servings = json['servings'] != null
        ? new Servings.fromJson(json['servings'])
        : null;
    spoonacularScore = json['spoonacularScore'];
    breadcrumbs = json['breadcrumbs'].cast<String>();
    aisle = json['aisle'];
    description = json['description'];
    generatedText = json['generatedText'];
    upc = json['upc'];
    brand = json['brand'];
    if (json['ingredients'] != null) {
      ingredients = new List<ProductIngredients>();
      json['ingredients'].forEach((v) {
        ingredients.add(new ProductIngredients.fromJson(v));
      });
    }
    ingredientCount = json['ingredientCount'];
    ingredientList = json['ingredientList'];
    images = json['images'].cast<String>();
    imageType = json['imageType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['likes'] = this.likes;
    data['badges'] = this.badges;
    data['importantBadges'] = this.importantBadges;
    if (this.nutrition != null) {
      data['nutrition'] = this.nutrition.toJson();
    }
    data['serving_size'] = this.servingSize;
    data['number_of_servings'] = this.numberOfServings;
    if (this.servings != null) {
      data['servings'] = this.servings.toJson();
    }
    data['spoonacularScore'] = this.spoonacularScore;
    data['breadcrumbs'] = this.breadcrumbs;
    data['aisle'] = this.aisle;
    data['description'] = this.description;
    data['generatedText'] = this.generatedText;
    data['upc'] = this.upc;
    data['brand'] = this.brand;
    if (this.ingredients != null) {
      data['ingredients'] = this.ingredients.map((v) => v.toJson()).toList();
    }
    data['ingredientCount'] = this.ingredientCount;
    data['ingredientList'] = this.ingredientList;
    data['images'] = this.images;
    data['imageType'] = this.imageType;
    return data;
  }
}

class ProductNutrition {
  List<ProductNutrients> nutrients;
  ProductCaloricBreakdown caloricBreakdown;
  int calories;
  String fat;
  String protein;
  String carbs;

  ProductNutrition({
    this.nutrients,
    this.caloricBreakdown,
    this.calories,
    this.fat,
    this.protein,
    this.carbs,
  });

  ProductNutrition.fromJson(Map<String, dynamic> json) {
    if (json['nutrients'] != null) {
      nutrients = new List<ProductNutrients>();
      json['nutrients'].forEach((v) {
        nutrients.add(new ProductNutrients.fromJson(v));
      });
    }
    caloricBreakdown = json['caloricBreakdown'] != null
        ? new ProductCaloricBreakdown.fromJson(json['caloricBreakdown'])
        : null;
    calories = json['calories'];
    fat = json['fat'];
    protein = json['protein'];
    carbs = json['carbs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nutrients != null) {
      data['nutrients'] = this.nutrients.map((v) => v.toJson()).toList();
    }
    if (this.caloricBreakdown != null) {
      data['caloricBreakdown'] = this.caloricBreakdown.toJson();
    }
    data['calories'] = this.calories;
    data['fat'] = this.fat;
    data['protein'] = this.protein;
    data['carbs'] = this.carbs;
    return data;
  }
}

class ProductNutrients {
  String title;
  double amount;
  String unit;
  double percentOfDailyNeeds;

  ProductNutrients({
    this.title,
    this.amount,
    this.unit,
    this.percentOfDailyNeeds,
  });

  ProductNutrients.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    amount = json['amount'];
    unit = json['unit'];
    percentOfDailyNeeds = json['percentOfDailyNeeds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['amount'] = this.amount;
    data['unit'] = this.unit;
    data['percentOfDailyNeeds'] = this.percentOfDailyNeeds;
    return data;
  }
}

class ProductCaloricBreakdown {
  double percentProtein;
  double percentFat;
  int percentCarbs;

  ProductCaloricBreakdown(
      {this.percentProtein, this.percentFat, this.percentCarbs});

  ProductCaloricBreakdown.fromJson(Map<String, dynamic> json) {
    percentProtein = json['percentProtein'];
    percentFat = json['percentFat'];
    percentCarbs = json['percentCarbs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['percentProtein'] = this.percentProtein;
    data['percentFat'] = this.percentFat;
    data['percentCarbs'] = this.percentCarbs;
    return data;
  }
}

class Servings {
  int number;
  double size;
  String unit;

  Servings({this.number, this.size, this.unit});

  Servings.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    size = json['size'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['size'] = this.size;
    data['unit'] = this.unit;
    return data;
  }
}

class ProductIngredients {
  String name;
  String safetyLevel;
  String description;

  ProductIngredients({this.name, this.safetyLevel, this.description});

  ProductIngredients.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    safetyLevel = json['safety_level'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['safety_level'] = this.safetyLevel;
    data['description'] = this.description;
    return data;
  }
}
