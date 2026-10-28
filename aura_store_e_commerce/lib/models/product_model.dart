class ProductModel {
  final String id;
  final String title;
  final String description;
  final double price;
  final String category;
  final String imageUrl;
  final double rating;
  final int reviewsCount;
  final bool inStock;

  const ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.imageUrl,
    this.rating = 4.8,
    this.reviewsCount = 120,
    this.inStock = true,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      category: json['category'] as String? ?? 'General',
      imageUrl: json['imageUrl'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 4.8,
      reviewsCount: json['reviewsCount'] as int? ?? 0,
      inStock: json['inStock'] as bool? ?? true,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'category': category,
      'imageUrl': imageUrl,
      'rating': rating,
      'reviewsCount': reviewsCount,
      'inStock': inStock,
    };
  }
}
