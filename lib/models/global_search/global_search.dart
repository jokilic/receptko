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
    sorting = json['sorting'];
    if (json['filterOptions'] != null) {
      filterOptions = new List<Null>();
      json['filterOptions'].forEach((v) {
        filterOptions.add(v);
      });
    }
    if (json['activeFilterOptions'] != null) {
      activeFilterOptions = new List<Null>();
      json['activeFilterOptions'].forEach((v) {
        activeFilterOptions.add(v);
      });
    }
    query = json['query'];
    totalResults = json['totalResults'];
    limit = json['limit'];
    offset = json['offset'];
    if (json['searchResults'] != null) {
      searchResults = new List<SearchResults>();
      json['searchResults'].forEach((v) {
        searchResults.add(new SearchResults.fromJson(v));
      });
    }
    expires = json['expires'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sorting'] = this.sorting;
    if (this.filterOptions != null) {
      data['filterOptions'] = this.filterOptions.map((v) => v).toList();
    }
    if (this.activeFilterOptions != null) {
      data['activeFilterOptions'] =
          this.activeFilterOptions.map((v) => v).toList();
    }
    data['query'] = this.query;
    data['totalResults'] = this.totalResults;
    data['limit'] = this.limit;
    data['offset'] = this.offset;
    if (this.searchResults != null) {
      data['searchResults'] =
          this.searchResults.map((v) => v.toJson()).toList();
    }
    data['expires'] = this.expires;
    return data;
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
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type'] = this.type;
    data['totalResults'] = this.totalResults;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
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
  List<Null> dataPoints;

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
    if (json['dataPoints'] != null) {
      dataPoints = new List<Null>();
      json['dataPoints'].forEach((v) {
        dataPoints.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['link'] = this.link;
    data['type'] = this.type;
    data['relevance'] = this.relevance;
    data['content'] = this.content;
    if (this.dataPoints != null) {
      data['dataPoints'] = this.dataPoints.map((v) => v).toList();
    }
    return data;
  }
}
