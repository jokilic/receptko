class RandomJoke {
  String text;

  RandomJoke({this.text});

  RandomJoke.fromJson(Map<String, dynamic> json) {
    text = json['text'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['text'] = text;

    return data;
  }
}
