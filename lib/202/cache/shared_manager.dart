import 'package:flutter_trainin/202/cache/shared_not_initalze.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { counter }

class SharedManager {
  SharedPreferences? prefences;
  SharedManager();
  Future<void> init() async {
    prefences = await SharedPreferences.getInstance();
  }

  void _checkPrefences() {
    if (prefences == null) {
      throw SharedNotInitiazleException();
    }
  }

  Future<void> saveString(SharedKeys key, String value) async {
    _checkPrefences();
    await prefences?.setString(key.name, value);
  }

  String? getString(SharedKeys key) {
    _checkPrefences();

    return prefences?.getString(key.name);
  }

  Future<bool> removeItem(SharedKeys key) async {
    _checkPrefences();

    return (await prefences?.remove(key.name)) ?? false;
  }
}
