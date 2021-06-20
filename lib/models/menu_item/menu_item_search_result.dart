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
    final List<dynamic> menuItemsList = json['menuItems'];
    menuItems = menuItemsList.map((menuItem) => MenuItems.fromJson(menuItem)).toList();
    offset = json['offset'];
    number = json['number'];
    totalMenuItems = json['totalMenuItems'];
    processingTimeMs = json['processingTimeMs'];
    expires = json['expires'];
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
}
