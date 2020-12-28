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
    if (json['products'] != null) {
      products = new List<Products>();
      json['products'].forEach((v) {
        products.add(new Products.fromJson(v));
      });
    }
    offset = json['offset'];
    number = json['number'];
    totalProducts = json['totalProducts'];
    processingTimeMs = json['processingTimeMs'];
    expires = json['expires'];
    isStale = json['isStale'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.products != null) {
      data['products'] = this.products.map((v) => v.toJson()).toList();
    }
    data['offset'] = this.offset;
    data['number'] = this.number;
    data['totalProducts'] = this.totalProducts;
    data['processingTimeMs'] = this.processingTimeMs;
    data['expires'] = this.expires;
    data['isStale'] = this.isStale;
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
    id = json['id'];
    title = json['title'];
    image = json['image'];
    imageType = json['imageType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['imageType'] = this.imageType;
    return data;
  }
}
