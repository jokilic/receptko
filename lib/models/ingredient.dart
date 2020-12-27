class Ingredient {
  int id;
  String original;
  String originalName;
  String name;
  List<String> possibleUnits;
  String consistency;
  List<String> shoppingListUnits;
  String aisle;
  String image;

  Ingredient({
    this.id,
    this.original,
    this.originalName,
    this.name,
    this.possibleUnits,
    this.consistency,
    this.shoppingListUnits,
    this.aisle,
    this.image,
  });

  Ingredient.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    original = json['original'] as String;
    originalName = json['originalName'] as String;
    name = json['name'] as String;
    possibleUnits = json['possibleUnits'] as List<String>;
    consistency = json['consistency'] as String;
    shoppingListUnits = json['shoppingListUnits'] as List<String>;
    aisle = json['aisle'] as String;
    image = json['image'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['original'] = original;
    data['originalName'] = originalName;
    data['name'] = name;
    data['possibleUnits'] = possibleUnits;
    data['consistency'] = consistency;
    data['shoppingListUnits'] = shoppingListUnits;
    data['aisle'] = aisle;
    data['image'] = image;

    return data;
  }
}
