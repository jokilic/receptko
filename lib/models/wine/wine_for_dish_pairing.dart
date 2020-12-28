class WineForDishPairing {
  List<String> pairedWines;
  String pairingText;
  List<ProductMatches> productMatches;

  WineForDishPairing({this.pairedWines, this.pairingText, this.productMatches});

  WineForDishPairing.fromJson(Map<String, dynamic> json) {
    pairedWines = json['pairedWines'].cast<String>();
    pairingText = json['pairingText'];
    if (json['productMatches'] != null) {
      productMatches = new List<ProductMatches>();
      json['productMatches'].forEach((v) {
        productMatches.add(new ProductMatches.fromJson(v));
      });
    }
  }
}

class ProductMatches {
  int id;
  String title;
  String description;
  String price;
  String imageUrl;
  double averageRating;
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
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    imageUrl = json['imageUrl'];
    averageRating = json['averageRating'];
    ratingCount = json['ratingCount'];
    score = json['score'];
    link = json['link'];
  }
}
