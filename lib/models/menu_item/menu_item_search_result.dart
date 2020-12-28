class MenuItemSearchResult {
  String type;
  List<MenuItems> menuItems;
  int offset;
  int number;
  int totalMenuItems;
  int processingTimeMs;
  int expires;

  MenuItemSearchResult({
    this.type,
    this.menuItems,
    this.offset,
    this.number,
    this.totalMenuItems,
    this.processingTimeMs,
    this.expires,
  });

  MenuItemSearchResult.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    if (json['menuItems'] != null) {
      menuItems = new List<MenuItems>();
      json['menuItems'].forEach((v) {
        menuItems.add(new MenuItems.fromJson(v));
      });
    }
    offset = json['offset'];
    number = json['number'];
    totalMenuItems = json['totalMenuItems'];
    processingTimeMs = json['processingTimeMs'];
    expires = json['expires'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.menuItems != null) {
      data['menuItems'] = this.menuItems.map((v) => v.toJson()).toList();
    }
    data['offset'] = this.offset;
    data['number'] = this.number;
    data['totalMenuItems'] = this.totalMenuItems;
    data['processingTimeMs'] = this.processingTimeMs;
    data['expires'] = this.expires;
    return data;
  }
}

class MenuItems {
  int id;
  String title;
  String restaurantChain;
  String servingSize;
  String readableServingSize;
  String image;
  String imageType;

  MenuItems({
    this.id,
    this.title,
    this.restaurantChain,
    this.servingSize,
    this.readableServingSize,
    this.image,
    this.imageType,
  });

  MenuItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    restaurantChain = json['restaurantChain'];
    servingSize = json['servingSize'];
    readableServingSize = json['readableServingSize'];
    image = json['image'];
    imageType = json['imageType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['restaurantChain'] = this.restaurantChain;
    data['servingSize'] = this.servingSize;
    data['readableServingSize'] = this.readableServingSize;
    data['image'] = this.image;
    data['imageType'] = this.imageType;
    return data;
  }
}
