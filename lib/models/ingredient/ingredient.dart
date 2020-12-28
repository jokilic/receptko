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
  List<String> meta;
  List<String> categoryPath;

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
    id = json['id'] ?? 0;
    original = json['original'] ?? '';
    originalName = json['originalName'] ?? '';
    // name = json['name'] ?? '';
    // possibleUnits = json['possibleUnits'] ?? [];
    // consistency = json['consistency'] ?? '';
    // shoppingListUnits = json['shoppingListUnits'] ?? [];
    // aisle = json['aisle'] ?? '';
    // image = json['image'] ?? '';
    //  meta = json['meta'] ?? [];
    // categoryPath = json['categoryPath'] ?? [];
  }
}
