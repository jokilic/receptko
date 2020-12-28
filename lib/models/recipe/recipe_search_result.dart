class RecipeSearchResult {
  List<RecipeSearchResults> results;
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
    if (json['results'] != null) {
      results = new List<RecipeSearchResults>();
      json['results'].forEach((v) {
        results.add(new RecipeSearchResults.fromJson(v));
      });
    }
    offset = json['offset'];
    number = json['number'];
    totalResults = json['totalResults'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    data['offset'] = this.offset;
    data['number'] = this.number;
    data['totalResults'] = this.totalResults;
    return data;
  }
}

class RecipeSearchResults {
  int id;
  String title;
  String image;
  String imageType;

  RecipeSearchResults({
    this.id,
    this.title,
    this.image,
    this.imageType,
  });

  RecipeSearchResults.fromJson(Map<String, dynamic> json) {
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
