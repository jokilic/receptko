class RecipeSummary {
  int id;
  String title;
  String summary;

  RecipeSummary({this.id, this.title, this.summary});

  RecipeSummary.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    title = json['title'] as String;
    summary = json['summary'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['title'] = title;
    data['summary'] = summary;

    return data;
  }
}
