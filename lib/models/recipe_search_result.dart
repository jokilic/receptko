class RecipeSearchResult {
  List<RecipeResults> results;
  int offset;
  int number;
  int totalResults;

  RecipeSearchResult({
    this.results,
    this.offset,
    this.number,
    this.totalResults,
  });

  RecipeSearchResult.fromJson(Map<String, dynamic> json) {
    results = json['results'] as List<RecipeResults>;
    offset = json['offset'] as int;
    number = json['number'] as int;
    totalResults = json['totalResults'] as int;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['results'] = results;
    data['offset'] = offset;
    data['number'] = number;
    data['totalResults'] = totalResults;

    return data;
  }
}

class RecipeResults {
  int id;
  String title;
  String image;
  String imageType;

  RecipeResults({
    this.id,
    this.title,
    this.image,
    this.imageType,
  });

  RecipeResults.fromJson(Map<String, dynamic> json) {
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
