class RandomTrivia {
  String text;

  RandomTrivia({this.text});

  RandomTrivia.fromJson(Map<String, dynamic> json) {
    text = json['text'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['text'] = text;

    return data;
  }
}
