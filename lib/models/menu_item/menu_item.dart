class MenuItem {
  int id;
  String title;
  double price;
  double likes;
  List<dynamic> badges;
  Nutrition nutrition;
  String servingSize;
  String readableServingSize;
  double numberOfServings;
  double spoonacularScore;
  List<dynamic> breadcrumbs;
  String imageType;
  String generatedText;
  String restaurantChain;
  List<dynamic> images;

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
    id = json['id'];
    title = json['title'];
    price = json['price'];
    likes = json['likes'];
    badges = json['badges'];
    nutrition = Nutrition.fromJson(json['nutrition']);
    servingSize = json['servingSize'];
    readableServingSize = json['readableServingSize'];
    numberOfServings = json['numberOfServings'];
    spoonacularScore = json['spoonacularScore'];
    breadcrumbs = json['breadcrumbs'];
    imageType = json['imageType'];
    generatedText = json['generatedText'];
    restaurantChain = json['restaurantChain'];
    images = json['images'];
  }
}

class Nutrition {
  List<MenuItemNutrients> nutrients;
  CaloricBreakdown caloricBreakdown;
  double calories;
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
    final List<dynamic> nutrientsList = json['nutrients'];
    nutrients = nutrientsList
        .map((dynamic nutrient) => MenuItemNutrients.fromJson(nutrient))
        .toList();
    caloricBreakdown = CaloricBreakdown.fromJson(json['caloricBreakdown']);
    calories = json['calories'];
    fat = json['fat'];
    protein = json['protein'];
    carbs = json['carbs'];
  }
}

class MenuItemNutrients {
  String title;
  double amount;
  String unit;
  double percentOfDailyNeeds;

  MenuItemNutrients({
    this.title,
    this.amount,
    this.unit,
    this.percentOfDailyNeeds,
  });

  MenuItemNutrients.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    amount = json['amount'];
    unit = json['unit'];
    percentOfDailyNeeds = json['percentOfDailyNeeds'];
  }
}

class CaloricBreakdown {
  double percentProtein;
  double percentFat;
  double percentCarbs;

  CaloricBreakdown({this.percentProtein, this.percentFat, this.percentCarbs});

  CaloricBreakdown.fromJson(Map<String, dynamic> json) {
    percentProtein = json['percentProtein'];
    percentFat = json['percentFat'];
    percentCarbs = json['percentCarbs'];
  }
}
