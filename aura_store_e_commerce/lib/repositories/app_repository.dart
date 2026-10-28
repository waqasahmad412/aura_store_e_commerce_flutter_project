import '../models/product_model.dart';
import '../services/database_service.dart';

class AppRepository {
  final DatabaseService _dbService;
  AppRepository({DatabaseService? dbService}) : _dbService = dbService ?? InMemoryDatabaseService();

  Future<List<ProductModel>> fetchProducts() => _dbService.getProducts();
  Future<void> addProduct(ProductModel product) => _dbService.saveProduct(product);
  Future<void> removeProduct(String id) => _dbService.deleteProduct(id);
}
