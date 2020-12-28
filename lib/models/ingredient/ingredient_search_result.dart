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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}
