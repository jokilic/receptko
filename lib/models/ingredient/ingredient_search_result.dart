class IngredientSearchResult {
  List<IngredientResults> results;
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
    results = json['results'] as List<IngredientResults>;
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

class IngredientResults {
  int id;
  String name;
  String image;

  IngredientResults({this.id, this.name, this.image});

  IngredientResults.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    name = json['name'] as String;
    image = json['image'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['name'] = name;
    data['image'] = image;

    return data;
  }
}
