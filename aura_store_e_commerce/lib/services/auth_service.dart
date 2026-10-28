import '../models/user_model.dart';

abstract class AuthService {
  Future<UserModel?> getCurrentUser();
  Future<UserModel> signInWithEmailPassword(String email, String password);
  Future<UserModel> signUpWithEmailPassword(String name, String email, String password);
  Future<void> signOut();
}

class MockAuthService implements AuthService {
  UserModel? _currentUser = UserModel(
    id: 'user-001',
    name: 'Waqas Ahmad',
    email: 'waqasahmad08766@gmail.com',
    avatarUrl: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150',
    role: 'verified_pro',
    createdAt: DateTime.now(),
  );

  @override
  Future<UserModel?> getCurrentUser() async => _currentUser;

  @override
  Future<UserModel> signInWithEmailPassword(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 300));
    _currentUser = UserModel(
      id: 'user-001',
      name: email.split('@')[0],
      email: email,
      createdAt: DateTime.now(),
    );
    return _currentUser!;
  }

  @override
  Future<UserModel> signUpWithEmailPassword(String name, String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 300));
    _currentUser = UserModel(
      id: 'user-new',
      name: name,
      email: email,
      createdAt: DateTime.now(),
    );
    return _currentUser!;
  }

  @override
  Future<void> signOut() async {
    _currentUser = null;
  }
}
