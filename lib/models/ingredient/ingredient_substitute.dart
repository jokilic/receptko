class IngredientSubstitute {
  String status;
  String ingredient;
  List<dynamic> substitutes;
  String message;

  IngredientSubstitute({
    this.status,
    this.ingredient,
    this.substitutes,
    this.message,
  });

  IngredientSubstitute.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    ingredient = json['ingredient'];
    substitutes = json['substitutes'].cast<String>();
    message = json['message'];
  }
}
