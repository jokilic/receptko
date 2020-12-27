class SearchResult {
  List<Results> results;
  int offset;
  int number;
  int totalResults;

  SearchResult({
    this.results,
    this.offset,
    this.number,
    this.totalResults,
  });

  SearchResult.fromJson(Map<String, dynamic> json) {
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
  String title;
  String image;
  String imageType;

  Results({
    this.id,
    this.title,
    this.image,
    this.imageType,
  });

  Results.fromJson(Map<String, dynamic> json) {
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
