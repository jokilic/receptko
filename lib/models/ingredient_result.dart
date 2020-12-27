class IngredientResult {
  List<Results> results;
  int offset;
  int number;
  int totalResults;

  IngredientResult({
    this.results,
    this.offset,
    this.number,
    this.totalResults,
  });

  IngredientResult.fromJson(Map<String, dynamic> json) {
    results = json['results'] as List<Results>;
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

class Results {
  int id;
  String name;
  String image;

  Results({this.id, this.name, this.image});

  Results.fromJson(Map<String, dynamic> json) {
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
