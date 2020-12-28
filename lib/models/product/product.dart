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
}
