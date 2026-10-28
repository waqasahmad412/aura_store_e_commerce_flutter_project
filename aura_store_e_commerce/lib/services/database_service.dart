import '../models/product_model.dart';

abstract class DatabaseService {
  Future<List<ProductModel>> getProducts();
  Future<ProductModel?> getProductById(String id);
  Future<void> saveProduct(ProductModel product);
  Future<void> deleteProduct(String id);
}

class InMemoryDatabaseService implements DatabaseService {
  final List<ProductModel> _products = [
    const ProductModel(
      id: 'p-1',
      title: 'Premium Wireless Headphones',
      description: 'Active noise cancellation with 40-hour battery life.',
      price: 199.99,
      category: 'Electronics',
      imageUrl: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=300',
    ),
    const ProductModel(
      id: 'p-2',
      title: 'Smart Fitness Watch',
      description: 'Heart rate monitor, GPS tracking, and water resistant.',
      price: 149.50,
      category: 'Fitness',
      imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=300',
    ),
  ];

  @override
  Future<List<ProductModel>> getProducts() async => List.unmodifiable(_products);

  @override
  Future<ProductModel?> getProductById(String id) async {
    try {
      return _products.firstWhere((p) => p.id == id);
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> saveProduct(ProductModel product) async {
    final idx = _products.indexWhere((p) => p.id == product.id);
    if (idx >= 0) {
      _products[idx] = product;
    } else {
      _products.add(product);
    }
  }

  @override
  Future<void> deleteProduct(String id) async {
    _products.removeWhere((p) => p.id == id);
  }
}
