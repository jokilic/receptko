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
}
