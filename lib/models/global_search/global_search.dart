class GlobalSearch {
  String sorting;
  List<dynamic> filterOptions;
  List<dynamic> activeFilterOptions;
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
    sorting = json['sorting'];
    filterOptions = json['filterOptions'];
    activeFilterOptions = json['activeFilterOptions'];
    query = json['query'];
    totalResults = json['totalResults'];
    limit = json['limit'];
    offset = json['offset'];
    final List<dynamic> searchResultsList = json['searchResults'];
    searchResults = searchResultsList
        .map((dynamic searchResult) => SearchResults.fromJson(searchResult))
        .toList();
    expires = json['expires'];
  }
}

class SearchResults {
  String name;
  String type;
  int totalResults;
  List<Results> results;

  SearchResults({
    this.name,
    this.type,
    this.totalResults,
    this.results,
  });

  SearchResults.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    totalResults = json['totalResults'];
    final List<dynamic> resultsList = json['results'];
    results =
        resultsList.map((dynamic result) => Results.fromJson(result)).toList();
  }
}

class Results {
  int id;
  String name;
  String image;
  String link;
  String type;
  dynamic relevance;
  String content;
  List<dynamic> dataPoints;

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
    id = json['id'];
    name = json['name'];
    image = json['image'];
    link = json['link'];
    type = json['type'];
    relevance = json['relevance'];
    content = json['content'];
    dataPoints = json['dataPoints'];
  }
}
