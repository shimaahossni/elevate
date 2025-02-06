// features/home/data/product/rating.dart
class Rating {
  final double rate;
  final int count;

  Rating({required this.rate, required this.count});

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: (json['rate'] as num?)?.toDouble() ?? 0.0,
        count: json['count'] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        'rate': rate,
        'count': count,
      };
}
