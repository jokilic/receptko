class RandomTrivia {
  String text;

  RandomTrivia({this.text});

  RandomTrivia.fromJson(Map<String, dynamic> json) {
    text = json['text'];
  }
}
