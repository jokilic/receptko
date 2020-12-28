class WineDescription {
  String wineDescription;

  WineDescription({this.wineDescription});

  WineDescription.fromJson(Map<String, dynamic> json) {
    wineDescription = json['wineDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['wineDescription'] = this.wineDescription;
    return data;
  }
}
