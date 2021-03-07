class DishForWinePairing {
  String text;
  List<dynamic> pairings;

  DishForWinePairing({this.text, this.pairings});

  DishForWinePairing.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    pairings = json['pairings'].cast<String>();
  }
}
