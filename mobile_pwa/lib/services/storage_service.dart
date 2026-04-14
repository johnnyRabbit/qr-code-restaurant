import 'package:shared_preferences/shared_preferences.dart';
import '../config/app_config.dart';

class StorageService {
  static final StorageService _instance = StorageService._internal();
  late SharedPreferences _prefs;

  factory StorageService() {
    return _instance;
  }

  StorageService._internal();

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // String operations
  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  String? getString(String key) {
    return _prefs.getString(key);
  }

  // Int operations
  Future<bool> setInt(String key, int value) async {
    return await _prefs.setInt(key, value);
  }

  int? getInt(String key) {
    return _prefs.getInt(key);
  }

  // Bool operations
  Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  bool? getBool(String key) {
    return _prefs.getBool(key);
  }

  // Double operations
  Future<bool> setDouble(String key, double value) async {
    return await _prefs.setDouble(key, value);
  }

  double? getDouble(String key) {
    return _prefs.getDouble(key);
  }

  // String List operations
  Future<bool> setStringList(String key, List<String> value) async {
    return await _prefs.setStringList(key, value);
  }

  List<String>? getStringList(String key) {
    return _prefs.getStringList(key);
  }

  // Auth token operations
  Future<bool> saveToken(String token) async {
    return await setString(AppConfig.tokenKey, token);
  }

  String? getToken() {
    return getString(AppConfig.tokenKey);
  }

  Future<bool> removeToken() async {
    return await _prefs.remove(AppConfig.tokenKey);
  }

  // Clear all data
  Future<bool> clear() async {
    return await _prefs.clear();
  }

  // Remove specific key
  Future<bool> remove(String key) async {
    return await _prefs.remove(key);
  }

  // Check if key exists
  bool containsKey(String key) {
    return _prefs.containsKey(key);
  }
}
