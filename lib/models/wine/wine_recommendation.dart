class WineRecommendation {
  List<RecommendedWines> recommendedWines;
  int totalFound;

  WineRecommendation({this.recommendedWines, this.totalFound});

  WineRecommendation.fromJson(Map<String, dynamic> json) {
    final List<dynamic> recommendedWinesList = json['recommendedWines'];
    recommendedWines =
        recommendedWinesList.map((recommendedWine) => RecommendedWines.fromJson(recommendedWine)).toList();
    totalFound = json['totalFound'];
  }
}

class RecommendedWines {
  int id;
  String title;
  String description;
  String price;
  String imageUrl;
  double averageRating;
  int ratingCount;
  double score;
  String link;

  RecommendedWines({
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

  RecommendedWines.fromJson(Map<String, dynamic> json) {
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
