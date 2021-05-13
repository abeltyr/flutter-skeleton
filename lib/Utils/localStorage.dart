import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  LocalStorage._privateConstructor();
  static final LocalStorage instance = LocalStorage._privateConstructor();

  static SharedPreferences _prefs;

  Future get prefs async {
    if (_prefs != null) return _prefs;
    _prefs = await SharedPreferences.getInstance();
    return _prefs;
  }

  storeToken(token) async {
    SharedPreferences prefs = await instance.prefs;
    prefs.setString('token', token);
  }

  Future<String> getToken() async {
    SharedPreferences prefs = await instance.prefs;
    String token = prefs.getString('token');
    return token;
  }

  logout() async {
    SharedPreferences prefs = await instance.prefs;
    prefs.setString('token', null);
  }
}
