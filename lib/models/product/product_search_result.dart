class ProductSearchResult {
  String type;
  List<Products> products;
  int offset;
  int number;
  int totalProducts;
  int processingTimeMs;
  int expires;

  ProductSearchResult({
    this.type,
    this.products,
    this.offset,
    this.number,
    this.totalProducts,
    this.processingTimeMs,
    this.expires,
  });

  ProductSearchResult.fromJson(Map<String, dynamic> json) {
    type = json['type'] as String;
    products = json['products'] as List<Products>;
    offset = json['offset'] as int;
    number = json['number'] as int;
    totalProducts = json['totalProducts'] as int;
    processingTimeMs = json['processingTimeMs'] as int;
    expires = json['expires'] as int;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['type'] = type;
    data['products'] = products;
    data['offset'] = offset;
    data['number'] = number;
    data['totalProducts'] = totalProducts;
    data['processingTimeMs'] = processingTimeMs;
    data['expires'] = expires;

    return data;
  }
}

class Products {
  int id;
  String title;
  String image;
  String imageType;

  Products({
    this.id,
    this.title,
    this.image,
    this.imageType,
  });

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    title = json['title'] as String;
    image = json['image'] as String;
    imageType = json['imageType'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['imageType'] = imageType;

    return data;
  }
}
