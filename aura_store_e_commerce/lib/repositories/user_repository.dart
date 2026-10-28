import '../models/user_model.dart';
import '../services/auth_service.dart';

class UserRepository {
  final AuthService _authService;
  UserRepository({AuthService? authService}) : _authService = authService ?? MockAuthService();

  Future<UserModel?> getCurrentUser() => _authService.getCurrentUser();
  Future<UserModel> signIn(String email, String password) => _authService.signInWithEmailPassword(email, password);
  Future<UserModel> signUp(String name, String email, String password) => _authService.signUpWithEmailPassword(name, email, password);
  Future<void> signOut() => _authService.signOut();
}
