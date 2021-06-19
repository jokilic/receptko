class ProductSearchResult {
  String type;
  List<Products> products;
  int offset;
  int number;
  int totalProducts;
  int processingTimeMs;
  int expires;
  bool isStale;

  ProductSearchResult({
    this.type,
    this.products,
    this.offset,
    this.number,
    this.totalProducts,
    this.processingTimeMs,
    this.expires,
    this.isStale,
  });

  ProductSearchResult.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    final List<dynamic> productsList = json['products'];
    products = productsList.map((product) => Products.fromJson(product)).toList();
    offset = json['offset'];
    number = json['number'];
    totalProducts = json['totalProducts'];
    processingTimeMs = json['processingTimeMs'];
    expires = json['expires'];
    isStale = json['isStale'];
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
    id = json['id'];
    title = json['title'];
    image = json['image'];
    imageType = json['imageType'];
  }
}
