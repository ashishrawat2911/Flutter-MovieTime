import 'package:shared_preferences/shared_preferences.dart';

class KigSharedPreferences {
  static const String login = "login";
  static const String region = "region";

  loggedIn(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(login, value);
  }

  Future<bool> getLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(login) ?? false;
  }

  setRegion(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(region, value);
  }

  Future<String> getRegion() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(region) ?? "IN";
  }
}
