class WineRecommendation {
  List<RecommendedWines> recommendedWines;
  int totalFound;

  WineRecommendation({this.recommendedWines, this.totalFound});

  WineRecommendation.fromJson(Map<String, dynamic> json) {
    recommendedWines = json['recommendedWines'] as List<RecommendedWines>;
    totalFound = json['totalFound'] as int;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['recommendedWines'] = recommendedWines;
    data['totalFound'] = totalFound;

    return data;
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
    id = json['id'] as int;
    title = json['title'] as String;
    description = json['description'] as String;
    price = json['price'] as String;
    imageUrl = json['imageUrl'] as String;
    averageRating = json['averageRating'] as double;
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
