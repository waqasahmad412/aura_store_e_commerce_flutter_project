import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../repositories/app_repository.dart';

class ProductProvider extends ChangeNotifier {
  final AppRepository _repository = AppRepository();
  List<ProductModel> _products = [];
  bool _isLoading = false;

  List<ProductModel> get products => _products;
  bool get isLoading => _isLoading;

  ProductProvider() {
    loadProducts();
  }

  Future<void> loadProducts() async {
    _isLoading = true;
    notifyListeners();
    _products = await _repository.fetchProducts();
    _isLoading = false;
    notifyListeners();
  }
}
