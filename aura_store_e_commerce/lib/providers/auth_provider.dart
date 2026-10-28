import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../repositories/user_repository.dart';

class AuthProvider extends ChangeNotifier {
  final UserRepository _repository = UserRepository();
  UserModel? _user;
  bool _isLoading = false;

  UserModel? get user => _user;
  bool get isAuthenticated => _user != null;
  bool get isLoading => _isLoading;

  AuthProvider() {
    _init();
  }

  Future<void> _init() async {
    _user = await _repository.getCurrentUser();
    notifyListeners();
  }

  Future<bool> signIn(String email, String password) async {
    _isLoading = true;
    notifyListeners();
    try {
      _user = await _repository.signIn(email, password);
      _isLoading = false;
      notifyListeners();
      return true;
    } catch (_) {
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  Future<void> signOut() async {
    await _repository.signOut();
    _user = null;
    notifyListeners();
  }
}
