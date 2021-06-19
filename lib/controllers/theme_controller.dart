import 'package:get/get.dart';

class ThemeController extends GetxController {
  /// ------------------------
  /// VARIABLES
  /// ------------------------

  final RxBool _darkTheme = false.obs;

  /// ------------------------
  /// GETTERS
  /// ------------------------

  bool get darkTheme => _darkTheme.value;

  /// ------------------------
  /// SETTERS
  /// ------------------------

  set darkTheme(bool value) => _darkTheme.value = value;

  /// ------------------------
  /// METHODS
  /// ------------------------

  void toggleTheme() => darkTheme = !darkTheme;
}
