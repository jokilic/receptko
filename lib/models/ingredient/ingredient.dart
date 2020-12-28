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
    id = json['id'];
    original = json['original'];
    originalName = json['originalName'];
    name = json['name'];
    possibleUnits = json['possibleUnits'].cast<String>();
    consistency = json['consistency'];
    shoppingListUnits = json['shoppingListUnits'].cast<String>();
    aisle = json['aisle'];
    image = json['image'];
    if (json['meta'] != null) {
      meta = new List<Null>();
      json['meta'].forEach((v) {
        meta.add(v);
      });
    }
    if (json['categoryPath'] != null) {
      categoryPath = new List<Null>();
      json['categoryPath'].forEach((v) {
        categoryPath.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['original'] = this.original;
    data['originalName'] = this.originalName;
    data['name'] = this.name;
    data['possibleUnits'] = this.possibleUnits;
    data['consistency'] = this.consistency;
    data['shoppingListUnits'] = this.shoppingListUnits;
    data['aisle'] = this.aisle;
    data['image'] = this.image;
    if (this.meta != null) {
      data['meta'] = this.meta.map((v) => v).toList();
    }
    if (this.categoryPath != null) {
      data['categoryPath'] = this.categoryPath.map((v) => v).toList();
    }
    return data;
  }
}
