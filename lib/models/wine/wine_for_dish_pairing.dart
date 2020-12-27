class WineForDishPairing {
  List<String> pairedWines;
  String pairingText;
  List<ProductMatches> productMatches;

  WineForDishPairing({this.pairedWines, this.pairingText, this.productMatches});

  WineForDishPairing.fromJson(Map<String, dynamic> json) {
    pairedWines = json['pairedWines'] as List<String>;
    pairingText = json['pairingText'] as String;
    productMatches = json['productMatches'] as List<ProductMatches>;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['pairedWines'] = pairedWines;
    data['pairingText'] = pairingText;
    data['productMatches'] = productMatches;

    return data;
  }
}

class ProductMatches {
  int id;
  String title;
  String description;
  String price;
  String imageUrl;
  int averageRating;
  int ratingCount;
  double score;
  String link;

  ProductMatches({
    this.id,
    this.title,
    this.description,
    this.price,
    this.imageUrl,
    this.averageRating,
    this.ratingCount,
    this.score,
    this.link,
  });

  ProductMatches.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    title = json['title'] as String;
    description = json['description'] as String;
    price = json['price'] as String;
    imageUrl = json['imageUrl'] as String;
    averageRating = json['averageRating'] as int;
    ratingCount = json['ratingCount'] as int;
    score = json['score'] as double;
    link = json['link'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['price'] = price;
    data['imageUrl'] = imageUrl;
    data['averageRating'] = averageRating;
    data['ratingCount'] = ratingCount;
    data['score'] = score;
    data['link'] = link;

    return data;
  }
}
