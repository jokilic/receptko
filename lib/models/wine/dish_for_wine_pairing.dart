class DishForWinePairing {
  String text;
  List<String> pairings;

  DishForWinePairing({this.text, this.pairings});

  DishForWinePairing.fromJson(Map<String, dynamic> json) {
    text = json['text'] as String;
    pairings = json['pairings'] as List<String>;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['text'] = text;
    data['pairings'] = pairings;

    return data;
  }
}
