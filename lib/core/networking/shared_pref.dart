import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  static setBool(String key, bool value) {
    _instance.setBool(key, value);
  }

  static getBool(String key) {
    return _instance.getBool(key) ?? false;
  }

  static setString(String key, String value) async {
    await _instance.setString(key, value);
  }

  static getString(String key) {
    return _instance.getString(key) ?? "";
  }

  static setInt(String key, int value) async {
    await _instance.setInt(key, value);
  }

  static getInt(String key) {
    return _instance.getInt(key) ?? 0;
  }

  static setStringList(String key, List<String> favoritesJson) {
    return _instance.setStringList(key, favoritesJson);
  }

  static getStringList(String key) {
    return _instance.getStringList(key) ?? [];
  }

  static remove(String key) {
    return _instance.remove(key);
  }
}
