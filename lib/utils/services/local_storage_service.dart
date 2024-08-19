import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// In this file, we write all the code needed to store and get data from the
/// local storage using the plugin shared_preferences. In this file,
/// there will be getters and setters for each and every data to be stored
/// in the local storage.
class LocalStorageService {
  final String _auth_token = "auth_token";
  String? _userToken;

  String? get userToken => _userToken;

  set userToken(String? value) {
    _userToken = value;
  }

  Future<String?> read(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<void> write(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<void> delete(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  Future<void> deleteAll() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    userToken = null;
    await prefs.clear();
  }

  Future<void> saveToken(String token) async {
    userToken = token;
    await write(_auth_token, token);
  }

  Future<String?> getToken() async {
    userToken = await read(_auth_token);
    return await read(_auth_token);
  }
}

final localStorageServiceProvider =
    Provider<LocalStorageService>((ref) => LocalStorageService());
