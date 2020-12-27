class SimilarRecipe {
  int id;
  String imageType;
  String title;
  int readyInMinutes;
  int servings;
  String sourceUrl;

  SimilarRecipe({
    this.id,
    this.imageType,
    this.title,
    this.readyInMinutes,
    this.servings,
    this.sourceUrl,
  });

  SimilarRecipe.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    imageType = json['imageType'] as String;
    title = json['title'] as String;
    readyInMinutes = json['readyInMinutes'] as int;
    servings = json['servings'] as int;
    sourceUrl = json['sourceUrl'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['imageType'] = imageType;
    data['title'] = title;
    data['readyInMinutes'] = readyInMinutes;
    data['servings'] = servings;
    data['sourceUrl'] = sourceUrl;

    return data;
  }
}
