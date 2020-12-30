class WineForDishPairing {
  List<dynamic> pairedWines;
  String pairingText;
  List<ProductMatches> productMatches;

  WineForDishPairing({this.pairedWines, this.pairingText, this.productMatches});

  WineForDishPairing.fromJson(Map<String, dynamic> json) {
    pairedWines = json['pairedWines'];
    pairingText = json['pairingText'];
    List<dynamic> productMatchesList = json['productMatches'];
    productMatches = productMatchesList
        .map((productMatch) => ProductMatches.fromJson(productMatch))
        .toList();
  }
}

class ProductMatches {
  int id;
  String title;
  String description;
  String price;
  String imageUrl;
  double averageRating;
  double ratingCount;
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
