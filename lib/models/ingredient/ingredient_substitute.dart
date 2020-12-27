class IngredientSubstitute {
  String status;
  String ingredient;
  List<String> substitutes;
  String message;

  IngredientSubstitute(
      {this.status, this.ingredient, this.substitutes, this.message});

  IngredientSubstitute.fromJson(Map<String, dynamic> json) {
    status = json['status'] as String;
    ingredient = json['ingredient'] as String;
    substitutes = json['substitutes'] as List<String>;
    message = json['message'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['status'] = status;
    data['ingredient'] = ingredient;
    data['substitutes'] = substitutes;
    data['message'] = message;

    return data;
  }
}
