import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constants/app_constants.dart';
import '../../providers/product_provider.dart';
import '../../routes/app_routes.dart';
import 'widgets/home_header.dart';
import '../catalog/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider = context.watch<ProductProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appName),
        actions: [
          IconButton(
            icon: const Icon(Icons.grid_view),
            onPressed: () => Navigator.pushNamed(context, AppRoutes.catalog),
          ),
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () => Navigator.pushNamed(context, AppRoutes.profile),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const HomeHeader(appName: AppConstants.appName),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.between,
            children: [
              const Text('Featured Items', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () => Navigator.pushNamed(context, AppRoutes.catalog),
                child: const Text('View All'),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (productProvider.isLoading)
            const Center(child: CircularProgressIndicator())
          else
            ...productProvider.products.take(3).map((p) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ProductCard(product: p),
            )),
        ],
      ),
    );
  }
}
