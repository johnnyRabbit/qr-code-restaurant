import 'package:flutter/foundation.dart';
import '../models/user_model.dart';
import '../services/storage_service.dart';

class AuthProvider with ChangeNotifier {
  final StorageService _storage = StorageService();
  
  UserModel? _currentUser;
  bool _isLoading = false;
  String? _errorMessage;

  UserModel? get currentUser => _currentUser;
  bool get isLoading => _isLoading;
  bool get isAuthenticated => _currentUser?.isAuthenticated ?? false;
  String? get errorMessage => _errorMessage;

  Future<bool> login(String email, String password) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      // TODO: Implement actual API call
      await Future.delayed(const Duration(seconds: 1));
      
      // Mock user for demonstration
      _currentUser = const UserModel(
        id: '1',
        name: 'John Doe',
        email: 'john@example.com',
        isAuthenticated: true,
      );
      
      await _storage.saveToken('mock_token_123');
      
      _isLoading = false;
      notifyListeners();
      return true;
    } catch (e) {
      _errorMessage = e.toString();
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  Future<void> logout() async {
    _currentUser = null;
    await _storage.removeToken();
    notifyListeners();
  }

  Future<bool> checkAuthStatus() async {
    final token = _storage.getToken();
    
    if (token != null && token.isNotEmpty) {
      // TODO: Validate token with API
      _currentUser = const UserModel(
        id: '1',
        name: 'John Doe',
        email: 'john@example.com',
        isAuthenticated: true,
      );
      notifyListeners();
      return true;
    }
    
    return false;
  }

  void clearError() {
    _errorMessage = null;
    notifyListeners();
  }
}
