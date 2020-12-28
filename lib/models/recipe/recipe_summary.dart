class RecipeSummary {
  int id;
  String title;
  String summary;

  RecipeSummary({this.id, this.title, this.summary});

  RecipeSummary.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    summary = json['summary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['summary'] = this.summary;
    return data;
  }
}
