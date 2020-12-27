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
    type = json['type'] as String;
    menuItems = json['menuItems'] as List<MenuItems>;
    offset = json['offset'] as int;
    number = json['number'] as int;
    totalMenuItems = json['totalMenuItems'] as int;
    processingTimeMs = json['processingTimeMs'] as int;
    expires = json['expires'] as int;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['type'] = type;
    data['menuItems'] = menuItems;
    data['offset'] = offset;
    data['number'] = number;
    data['totalMenuItems'] = totalMenuItems;
    data['processingTimeMs'] = processingTimeMs;
    data['expires'] = expires;

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
    id = json['id'] as int;
    title = json['title'] as String;
    restaurantChain = json['restaurantChain'] as String;
    servingSize = json['servingSize'] as String;
    readableServingSize = json['readableServingSize'] as String;
    image = json['image'] as String;
    imageType = json['imageType'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['title'] = title;
    data['restaurantChain'] = restaurantChain;
    data['servingSize'] = servingSize;
    data['readableServingSize'] = readableServingSize;
    data['image'] = image;
    data['imageType'] = imageType;

    return data;
  }
}
