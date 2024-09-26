import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsManager{
  void saveStringToPrefs(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  Future<String> readStringFromPrefs(String key) async {
    final prefs = await SharedPreferences.getInstance();
    final result = prefs.getString(key);
    return result ?? "";
  }
}
