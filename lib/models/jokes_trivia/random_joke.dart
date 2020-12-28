class RandomJoke {
  String text;

  RandomJoke({this.text});

  RandomJoke.fromJson(Map<String, dynamic> json) {
    text = json['text'];
  }
}
