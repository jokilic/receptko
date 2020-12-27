class GlobalSearch {
  String sorting;
  List<String> filterOptions;
  List<String> activeFilterOptions;
  String query;
  int totalResults;
  int limit;
  int offset;
  List<SearchResults> searchResults;
  int expires;

  GlobalSearch({
    this.sorting,
    this.filterOptions,
    this.activeFilterOptions,
    this.query,
    this.totalResults,
    this.limit,
    this.offset,
    this.searchResults,
    this.expires,
  });

  GlobalSearch.fromJson(Map<String, dynamic> json) {
    sorting = json['sorting'] as String;
    filterOptions = json['filterOptions'] as List<String>;
    activeFilterOptions = json['activeFilterOptions'] as List<String>;
    query = json['query'] as String;
    totalResults = json['totalResults'] as int;
    limit = json['limit'] as int;
    offset = json['offset'] as int;
    searchResults = json['searchResults'] as List<SearchResults>;
    expires = json['expires'] as int;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['sorting'] = sorting;
    data['filterOptions'] = filterOptions;
    data['activeFilterOptions'] = activeFilterOptions;
    data['query'] = query;
    data['totalResults'] = totalResults;
    data['limit'] = limit;
    data['offset'] = offset;
    data['searchResults'] = searchResults;
    data['expires'] = expires;

    return data;
  }
}

class SearchResults {
  String name;
  String type;
  int totalResults;
  List<Results> results;

  SearchResults({this.name, this.type, this.totalResults, this.results});

  SearchResults.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    type = json['type'] as String;
    totalResults = json['totalResults'] as int;
    results = json['results'] as List<Results>;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['name'] = name;
    data['type'] = type;
    data['totalResults'] = totalResults;
    data['results'] = results;

    return data;
  }
}

class Results {
  int id;
  String name;
  String image;
  String link;
  String type;
  double relevance;
  String content;
  List<double> dataPoints;

  Results({
    this.id,
    this.name,
    this.image,
    this.link,
    this.type,
    this.relevance,
    this.content,
    this.dataPoints,
  });

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    name = json['name'] as String;
    image = json['image'] as String;
    link = json['link'] as String;
    type = json['type'] as String;
    relevance = json['relevance'] as double;
    content = json['content'] as String;
    dataPoints = json['dataPoints'] as List<double>;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['link'] = link;
    data['type'] = type;
    data['relevance'] = relevance;
    data['content'] = content;
    data['dataPoints'] = dataPoints;

    return data;
  }
}
