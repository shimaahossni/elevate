// domain/model/Brand.dart
import 'package:equatable/equatable.dart';

class Brand extends Equatable {
  String? id;
  String? name;
  String? slug;
  String? image;

  Brand({
    this.id,
    this.name,
    this.slug,
    this.image,
  });
  //from json
  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      id: json['id'],
      name: json['name'],
      slug: json['slug'],
      image: json['image'],
    );
  }

  //copywith
  Brand copyWith({
    String? id,
    String? name,
    String? slug,
    String? image,
  }) {
    return Brand(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      image: image ?? this.image,
    );
  }

  //props
  @override 
  List<Object?> get props => [id];
}
