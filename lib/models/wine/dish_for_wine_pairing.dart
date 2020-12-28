class DishForWinePairing {
  String text;
  List<String> pairings;

  DishForWinePairing({this.text, this.pairings});

  DishForWinePairing.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    pairings = json['pairings'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['pairings'] = this.pairings;
    return data;
  }
}
