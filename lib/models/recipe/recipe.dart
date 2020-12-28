class Recipe {
  bool vegetarian;
  bool vegan;
  bool glutenFree;
  bool dairyFree;
  bool veryHealthy;
  bool cheap;
  bool veryPopular;
  bool sustainable;
  double pricePerServing;
  List<ExtendedIngredients> extendedIngredients;
  int id;
  String title;
  int readyInMinutes;
  int servings;
  String sourceUrl;
  String image;
  String imageType;
  String summary;
  List<String> cuisines;
  List<String> dishTypes;
  List<String> diets;
  List<String> occasions;
  String instructions;
  List<AnalyzedInstructions> analyzedInstructions;
  int originalId;
  String spoonacularSourceUrl;

  Recipe({
    this.vegetarian,
    this.vegan,
    this.glutenFree,
    this.dairyFree,
    this.veryHealthy,
    this.cheap,
    this.veryPopular,
    this.sustainable,
    this.pricePerServing,
    this.extendedIngredients,
    this.id,
    this.title,
    this.readyInMinutes,
    this.servings,
    this.sourceUrl,
    this.image,
    this.imageType,
    this.summary,
    this.cuisines,
    this.dishTypes,
    this.diets,
    this.occasions,
    this.instructions,
    this.analyzedInstructions,
    this.originalId,
    this.spoonacularSourceUrl,
  });

  Recipe.fromJson(Map<String, dynamic> json) {
    vegetarian = json['vegetarian'] as bool;
    vegan = json['vegan'] as bool;
    glutenFree = json['glutenFree'] as bool;
    dairyFree = json['dairyFree'] as bool;
    veryHealthy = json['veryHealthy'] as bool;
    cheap = json['cheap'] as bool;
    veryPopular = json['veryPopular'] as bool;
    sustainable = json['sustainable'] as bool;
    pricePerServing = json['pricePerServing'] as double;
    extendedIngredients =
        json['extendedIngredients'] as List<ExtendedIngredients> ??
            <ExtendedIngredients>[];
    id = json['id'] as int;
    title = json['title'] as String;
    readyInMinutes = json['readyInMinutes'] as int;
    servings = json['servings'] as int;
    sourceUrl = json['sourceUrl'] as String;
    image = json['image'] as String;
    imageType = json['imageType'] as String;
    summary = json['summary'] as String;
    cuisines = json['cuisines'] as List<String> ?? <String>[];
    dishTypes = json['dishTypes'] as List<String> ?? <String>[];
    diets = json['diets'] as List<String> ?? <String>[];
    occasions = json['occasions'] as List<String> ?? <String>[];
    instructions = json['instructions'] as String;
    analyzedInstructions =
        json['analyzedInstructions'] as List<AnalyzedInstructions>;
    originalId = json['originalId'] as int;
    spoonacularSourceUrl = json['spoonacularSourceUrl'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['vegetarian'] = vegetarian;
    data['vegan'] = vegan;
    data['glutenFree'] = glutenFree;
    data['dairyFree'] = dairyFree;
    data['veryHealthy'] = veryHealthy;
    data['cheap'] = cheap;
    data['veryPopular'] = veryPopular;
    data['sustainable'] = sustainable;
    data['pricePerServing'] = pricePerServing;
    data['extendedIngredients'] = extendedIngredients;
    data['id'] = id;
    data['title'] = title;
    data['readyInMinutes'] = readyInMinutes;
    data['servings'] = servings;
    data['sourceUrl'] = sourceUrl;
    data['image'] = image;
    data['imageType'] = imageType;
    data['summary'] = summary;
    data['cuisines'] = cuisines;
    data['dishTypes'] = dishTypes;
    data['diets'] = diets;
    data['occasions'] = occasions;
    data['instructions'] = instructions;
    data['analyzedInstructions'] = analyzedInstructions;
    data['originalId'] = originalId;
    data['spoonacularSourceUrl'] = spoonacularSourceUrl;

    return data;
  }
}

class ExtendedIngredients {
  int id;
  String aisle;
  String image;
  String consistency;
  String name;
  String original;
  String originalString;
  String originalName;
  double amount;
  String unit;
  Measures measures;

  ExtendedIngredients({
    this.id,
    this.aisle,
    this.image,
    this.consistency,
    this.name,
    this.original,
    this.originalString,
    this.originalName,
    this.amount,
    this.unit,
    this.measures,
  });

  ExtendedIngredients.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    aisle = json['aisle'] as String;
    image = json['image'] as String;
    consistency = json['consistency'] as String;
    name = json['name'] as String;
    original = json['original'] as String;
    originalString = json['originalString'] as String;
    originalName = json['originalName'] as String;
    amount = json['amount'] as double;
    unit = json['unit'] as String;
    measures = json['measures'] as Measures;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['aisle'] = aisle;
    data['image'] = image;
    data['consistency'] = consistency;
    data['name'] = name;
    data['original'] = original;
    data['originalString'] = originalString;
    data['originalName'] = originalName;
    data['amount'] = amount;
    data['unit'] = unit;
    data['measures'] = measures;

    return data;
  }
}

class Measures {
  String us;
  String metric;

  Measures({this.us, this.metric});

  Measures.fromJson(Map<String, dynamic> json) {
    us = json['us'] as String;
    metric = json['metric'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['us'] = us;
    data['metric'] = metric;

    return data;
  }
}

class Us {
  double amount;
  String unitShort;
  String unitLong;

  Us({this.amount, this.unitShort, this.unitLong});

  Us.fromJson(Map<String, dynamic> json) {
    amount = json['amount'] as double;
    unitShort = json['unitShort'] as String;
    unitLong = json['unitLong'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['amount'] = amount;
    data['unitShort'] = unitShort;
    data['unitLong'] = unitLong;

    return data;
  }
}

class Metric {
  double amount;
  String unitShort;
  String unitLong;

  Metric({this.amount, this.unitShort, this.unitLong});

  Metric.fromJson(Map<String, dynamic> json) {
    amount = json['amount'] as double;
    unitShort = json['unitShort'] as String;
    unitLong = json['unitLong'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['amount'] = amount;
    data['unitShort'] = unitShort;
    data['unitLong'] = unitLong;

    return data;
  }
}

class AnalyzedInstructions {
  String name;
  List<Steps> steps;

  AnalyzedInstructions({this.name, this.steps});

  AnalyzedInstructions.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    steps = json['steps'] as List<Steps>;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['name'] = name;
    data['steps'] = steps;

    return data;
  }
}

class Steps {
  int number;
  String step;
  List<Ingredients> ingredients;
  List<Equipment> equipment;
  Temperature length;

  Steps({
    this.number,
    this.step,
    this.ingredients,
    this.equipment,
    this.length,
  });

  Steps.fromJson(Map<String, dynamic> json) {
    number = json['number'] as int;
    step = json['step'] as String;
    ingredients = json['ingredients'] as List<Ingredients>;
    equipment = json['equipment'] as List<Equipment>;
    length = json['length'] as Temperature;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['number'] = number;
    data['step'] = step;
    data['ingredients'] = ingredients;
    data['equipment'] = equipment;
    data['length'] = length;

    return data;
  }
}

class Ingredients {
  int id;
  String name;
  String localizedName;
  String image;

  Ingredients({
    this.id,
    this.name,
    this.localizedName,
    this.image,
  });

  Ingredients.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    name = json['name'] as String;
    localizedName = json['localizedName'] as String;
    image = json['image'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['name'] = name;
    data['localizedName'] = localizedName;
    data['image'] = image;

    return data;
  }
}

class Equipment {
  int id;
  String name;
  String localizedName;
  String image;
  Temperature temperature;

  Equipment({
    this.id,
    this.name,
    this.localizedName,
    this.image,
    this.temperature,
  });

  Equipment.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    name = json['name'] as String;
    localizedName = json['localizedName'] as String;
    image = json['image'] as String;
    temperature = json['temperature'] as Temperature;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['name'] = name;
    data['localizedName'] = localizedName;
    data['image'] = image;
    data['temperature'] = temperature;

    return data;
  }
}

class Temperature {
  int number;
  String unit;

  Temperature({this.number, this.unit});

  Temperature.fromJson(Map<String, dynamic> json) {
    number = json['number'] as int;
    unit = json['unit'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['number'] = number;
    data['unit'] = unit;

    return data;
  }
}
