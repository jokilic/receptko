class WineDescription {
  String wineDescription;

  WineDescription({this.wineDescription});

  WineDescription.fromJson(Map<String, dynamic> json) {
    wineDescription = json['wineDescription'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['wineDescription'] = wineDescription;

    return data;
  }
}
