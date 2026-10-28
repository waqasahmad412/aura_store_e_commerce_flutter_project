import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';
import '../screens/catalog/catalog_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/settings/settings_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String catalog = '/catalog';
  static const String login = '/login';
  static const String profile = '/profile';
  static const String settings = '/settings';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case catalog:
        return MaterialPageRoute(builder: (_) => const CatalogScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case AppRoutes.settings:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
