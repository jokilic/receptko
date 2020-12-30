class Ingredient {
  int id;
  String original;
  String originalName;
  String name;
  List<dynamic> possibleUnits;
  String consistency;
  List<dynamic> shoppingListUnits;
  String aisle;
  String image;
  List<dynamic> meta;
  List<dynamic> categoryPath;

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
    this.meta,
    this.categoryPath,
  });

  Ingredient.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    original = json['original'];
    originalName = json['originalName'];
    name = json['name'];
    possibleUnits = json['possibleUnits'];
    consistency = json['consistency'];
    shoppingListUnits = json['shoppingListUnits'];
    aisle = json['aisle'];
    image = json['image'];
    meta = json['meta'];
    categoryPath = json['categoryPath'];
  }
}
