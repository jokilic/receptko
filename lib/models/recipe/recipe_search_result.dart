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
    List<dynamic> resultsList = json['results'];
    results = resultsList
        .map((result) => RecipeSearchResults.fromJson(result))
        .toList();
    offset = json['offset'];
    number = json['number'];
    totalResults = json['totalResults'];
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
}
