class MenuItem {
  int id;
  String title;
  double price;
  int likes;
  List<Null> badges;
  Nutrition nutrition;
  String servingSize;
  String readableServingSize;
  double numberOfServings;
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
    id = json['id'];
    title = json['title'];
    price = json['price'];
    likes = json['likes'];
    if (json['badges'] != null) {
      badges = new List<Null>();
      json['badges'].forEach((v) {
        badges.add(v);
      });
    }
    nutrition = json['nutrition'] != null
        ? new Nutrition.fromJson(json['nutrition'])
        : null;
    servingSize = json['servingSize'];
    readableServingSize = json['readableServingSize'];
    numberOfServings = json['numberOfServings'];
    spoonacularScore = json['spoonacularScore'];
    breadcrumbs = json['breadcrumbs'].cast<String>();
    imageType = json['imageType'];
    generatedText = json['generatedText'];
    restaurantChain = json['restaurantChain'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['likes'] = this.likes;
    if (this.badges != null) {
      data['badges'] = this.badges.map((v) => v).toList();
    }
    if (this.nutrition != null) {
      data['nutrition'] = this.nutrition.toJson();
    }
    data['servingSize'] = this.servingSize;
    data['readableServingSize'] = this.readableServingSize;
    data['numberOfServings'] = this.numberOfServings;
    data['spoonacularScore'] = this.spoonacularScore;
    data['breadcrumbs'] = this.breadcrumbs;
    data['imageType'] = this.imageType;
    data['generatedText'] = this.generatedText;
    data['restaurantChain'] = this.restaurantChain;
    data['images'] = this.images;
    return data;
  }
}

class Nutrition {
  List<MenuItemNutrients> nutrients;
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
    if (json['nutrients'] != null) {
      nutrients = new List<MenuItemNutrients>();
      json['nutrients'].forEach((v) {
        nutrients.add(new MenuItemNutrients.fromJson(v));
      });
    }
    caloricBreakdown = json['caloricBreakdown'] != null
        ? new CaloricBreakdown.fromJson(json['caloricBreakdown'])
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

class CaloricBreakdown {
  int percentProtein;
  int percentFat;
  int percentCarbs;

  CaloricBreakdown({this.percentProtein, this.percentFat, this.percentCarbs});

  CaloricBreakdown.fromJson(Map<String, dynamic> json) {
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
