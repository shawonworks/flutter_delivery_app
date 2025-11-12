import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceValue {
  static const String isOnboarding = "isOnboarding";
}

class SharedPrefsHelper {
  // This one is for the set Bool
  static Future setBool(String key, bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool(key, value);
  }
  static Future setString(String key, bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString(key, value as String );
  }

  // This one is for the set Bool
  static Future getBool(String key,) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(key);
  }
  static Future getString(String key,) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(key);
  }
}