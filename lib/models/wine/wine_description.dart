class WineDescription {
  String wineDescription;

  WineDescription({this.wineDescription});

  WineDescription.fromJson(Map<String, dynamic> json) {
    wineDescription = json['wineDescription'];
  }
}
