import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  /// ------------------------
  /// VARIABLES
  /// ------------------------

  SharedPreferences _sharedPreferences;
  final RxBool _darkTheme = false.obs;

  /// ------------------------
  /// GETTERS
  /// ------------------------

  SharedPreferences get sharedPreferences => _sharedPreferences;
  bool get darkTheme => _darkTheme.value;

  /// ------------------------
  /// SETTERS
  /// ------------------------

  set darkTheme(bool value) => _darkTheme.value = value;

  /// ------------------------
  /// METHODS
  /// ------------------------

  Future<void> toggleTheme() async {
    darkTheme = !darkTheme;
    await sharedPreferences.setBool('darkTheme', darkTheme);
  }

  /// ------------------------
  /// INIT
  /// ------------------------

  @override
  Future<void> onInit() async {
    super.onInit();
    _sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.containsKey('darkTheme')
        ? darkTheme = sharedPreferences.getBool('darkTheme')
        : await sharedPreferences.setBool('darkTheme', darkTheme);
  }
}
