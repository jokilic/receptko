class Recipe {
  bool vegetarian;
  bool vegan;
  bool glutenFree;
  bool dairyFree;
  bool veryHealthy;
  bool cheap;
  bool veryPopular;
  bool sustainable;
  int weightWatcherSmartPoints;
  String gaps;
  bool lowFodmap;
  int aggregateLikes;
  int spoonacularScore;
  int healthScore;
  String creditsText;
  String license;
  String sourceName;
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
  WinePairing winePairing;
  String instructions;
  List<String> analyzedInstructions;
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
    this.weightWatcherSmartPoints,
    this.gaps,
    this.lowFodmap,
    this.aggregateLikes,
    this.spoonacularScore,
    this.healthScore,
    this.creditsText,
    this.license,
    this.sourceName,
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
    this.winePairing,
    this.instructions,
    this.analyzedInstructions,
    this.originalId,
    this.spoonacularSourceUrl,
  });

  Recipe.fromJson(Map<String, dynamic> json) {
    vegetarian = json['vegetarian'];
    vegan = json['vegan'];
    glutenFree = json['glutenFree'];
    dairyFree = json['dairyFree'];
    veryHealthy = json['veryHealthy'];
    cheap = json['cheap'];
    veryPopular = json['veryPopular'];
    sustainable = json['sustainable'];
    weightWatcherSmartPoints = json['weightWatcherSmartPoints'];
    gaps = json['gaps'];
    lowFodmap = json['lowFodmap'];
    aggregateLikes = json['aggregateLikes'];
    spoonacularScore = json['spoonacularScore'];
    healthScore = json['healthScore'];
    creditsText = json['creditsText'];
    license = json['license'];
    sourceName = json['sourceName'];
    pricePerServing = json['pricePerServing'];
    if (json['extendedIngredients'] != null) {
      extendedIngredients = new List<ExtendedIngredients>();
      json['extendedIngredients'].forEach((v) {
        extendedIngredients.add(new ExtendedIngredients.fromJson(v));
      });
    }
    id = json['id'];
    title = json['title'];
    readyInMinutes = json['readyInMinutes'];
    servings = json['servings'];
    sourceUrl = json['sourceUrl'];
    image = json['image'];
    imageType = json['imageType'];
    summary = json['summary'];
    if (json['cuisines'] != null) {
      cuisines = new List<Null>();
      json['cuisines'].forEach((v) {
        cuisines.add(v);
      });
    }
    dishTypes = json['dishTypes'].cast<String>();
    if (json['diets'] != null) {
      diets = new List<Null>();
      json['diets'].forEach((v) {
        diets.add(v);
      });
    }
    if (json['occasions'] != null) {
      occasions = new List<Null>();
      json['occasions'].forEach((v) {
        occasions.add(v);
      });
    }
    winePairing = json['winePairing'] != null
        ? new WinePairing.fromJson(json['winePairing'])
        : null;
    instructions = json['instructions'];
    if (json['analyzedInstructions'] != null) {
      analyzedInstructions = new List<Null>();
      json['analyzedInstructions'].forEach((v) {
        analyzedInstructions.add(v);
      });
    }
    originalId = json['originalId'];
    spoonacularSourceUrl = json['spoonacularSourceUrl'];
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
  List<String> meta;
  List<String> metaInformation;
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
    this.meta,
    this.metaInformation,
    this.measures,
  });

  ExtendedIngredients.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    aisle = json['aisle'];
    image = json['image'];
    consistency = json['consistency'];
    name = json['name'];
    original = json['original'];
    originalString = json['originalString'];
    originalName = json['originalName'];
    amount = json['amount'];
    unit = json['unit'];
    meta = json['meta'].cast<String>();
    metaInformation = json['metaInformation'].cast<String>();
    measures = json['measures'] != null
        ? new Measures.fromJson(json['measures'])
        : null;
  }
}

class Measures {
  Us us;
  Us metric;

  Measures({this.us, this.metric});

  Measures.fromJson(Map<String, dynamic> json) {
    us = json['us'] != null ? new Us.fromJson(json['us']) : null;
    metric = json['metric'] != null ? new Us.fromJson(json['metric']) : null;
  }
}

class Us {
  double amount;
  String unitShort;
  String unitLong;

  Us({this.amount, this.unitShort, this.unitLong});

  Us.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    unitShort = json['unitShort'];
    unitLong = json['unitLong'];
  }
}

class Metric {
  double amount;
  String unitShort;
  String unitLong;

  Metric({this.amount, this.unitShort, this.unitLong});

  Metric.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    unitShort = json['unitShort'];
    unitLong = json['unitLong'];
  }
}

class WinePairing {
  List<String> pairedWines;
  String pairingText;
  List<String> productMatches;

  WinePairing({this.pairedWines, this.pairingText, this.productMatches});

  WinePairing.fromJson(Map<String, dynamic> json) {
    if (json['pairedWines'] != null) {
      pairedWines = new List<Null>();
      json['pairedWines'].forEach((v) {
        pairedWines.add(v);
      });
    }
    pairingText = json['pairingText'];
    if (json['productMatches'] != null) {
      productMatches = new List<Null>();
      json['productMatches'].forEach((v) {
        productMatches.add(v);
      });
    }
  }
}
