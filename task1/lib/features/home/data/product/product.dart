// features/home/data/product/product.dart
import 'rating.dart';

class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final Rating rating;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] ?? 0,
        title: json['title'] ?? 'No Title',
        price: (json['price'] as num?)?.toDouble() ?? 0.0,
        description: json['description'] ?? 'No Description',
        category: json['category'] ?? 'Unknown Category',
        image: json['image'] ??
            "https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg",
        rating: Rating.fromJson(json['rating'] ?? {}),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
        'rating': rating.toJson(),
      };
}
