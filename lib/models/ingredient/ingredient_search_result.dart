class IngredientSearchResult {
  List<IngredientSearchResults> results;
  int offset;
  int number;
  int totalResults;

  IngredientSearchResult({
    this.results,
    this.offset,
    this.number,
    this.totalResults,
  });

  IngredientSearchResult.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = new List<IngredientSearchResults>();
      json['results'].forEach((v) {
        results.add(new IngredientSearchResults.fromJson(v));
      });
    }
    offset = json['offset'];
    number = json['number'];
    totalResults = json['totalResults'];
  }
}

class IngredientSearchResults {
  int id;
  String name;
  String image;

  IngredientSearchResults({this.id, this.name, this.image});

  IngredientSearchResults.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }
}
