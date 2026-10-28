import 'package:flutter/material.dart';
import '../../../models/product_model.dart';
import '../../../utils/formatters.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.withOpacity(0.2)),
      ),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            product.imageUrl,
            width: 48,
            height: 48,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => const Icon(Icons.image, size: 36),
          ),
        ),
        title: Text(product.title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(product.category),
        trailing: Text(
          Formatters.currency(product.price),
          style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
