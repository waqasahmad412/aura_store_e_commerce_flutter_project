import 'package:flutter/material.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  int _cartCount = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aura Boutique', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          Badge(
            label: Text('$_cartCount'),
            child: IconButton(
              icon: const Icon(Icons.shopping_bag_outlined),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.75,
        children: [
          _buildItem('Wireless ANC Pods', '$189.00', 'Electronics', Colors.purple.shade50),
          _buildItem('Minimalist Chrono Watch', '$240.00', 'Accessories', Colors.amber.shade50),
          _buildItem('Leather Weekend Duffle', '$160.00', 'Bags', Colors.blue.shade50),
          _buildItem('Ceramic Matte Mug Set', '$48.00', 'Home', Colors.emerald.shade50),
        ],
      ),
    );
  }

  Widget _buildItem(String title, String price, String category, Color bg) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: bg,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: const Center(child: Icon(Icons.image, size: 48, color: Colors.black26)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(category, style: const TextStyle(fontSize: 10, color: Color(0xFF64748B))),
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13), maxLines: 1),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(price, style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFEC4899))),
                    IconButton(
                      icon: const Icon(Icons.add_circle, color: Color(0xFFEC4899), size: 22),
                      onPressed: () => setState(() => _cartCount++),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
