import 'package:flutter/material.dart';
import '../services/storage_service.dart';
import '../config/app_config.dart';

class ThemeProvider with ChangeNotifier {
  final StorageService _storage = StorageService();
  
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;
  bool get isDarkMode => _themeMode == ThemeMode.dark;

  ThemeProvider() {
    _loadTheme();
  }

  void _loadTheme() {
    final savedTheme = _storage.getString(AppConfig.themeKey);
    
    if (savedTheme != null) {
      _themeMode = savedTheme == 'dark' ? ThemeMode.dark : ThemeMode.light;
    } else {
      _themeMode = ThemeMode.system;
    }
    
    notifyListeners();
  }

  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    _storage.setString(AppConfig.themeKey, isDarkMode ? 'dark' : 'light');
    notifyListeners();
  }

  void setTheme(ThemeMode mode) {
    _themeMode = mode;
    _storage.setString(AppConfig.themeKey, mode == ThemeMode.dark ? 'dark' : 'light');
    notifyListeners();
  }
}
