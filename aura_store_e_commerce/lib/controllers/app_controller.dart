import 'package:flutter/foundation.dart';
import '../repositories/app_repository.dart';

class AppController extends ChangeNotifier {
  final AppRepository _repository;
  bool _isLoading = false;

  AppController({AppRepository? repository}) : _repository = repository ?? AppRepository();

  bool get isLoading => _isLoading;

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }
}
