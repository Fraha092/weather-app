import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late SharedPreferences _prefs;

  static const _keyIsSimplified = 'isSimplified';

  static Future init() async => _prefs = await SharedPreferences.getInstance();

  static Future setViewPrefs(bool isSimplified) async =>
      await _prefs.setBool(_keyIsSimplified, isSimplified);

  static bool? getIsSimplified() => _prefs.getBool(_keyIsSimplified);
}