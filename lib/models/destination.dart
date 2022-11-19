// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Destination {
  final String name;
  final String description;
  final String imageURL;
  final num rating;

  Destination({
    required this.name,
    required this.description,
    required this.imageURL,
    required this.rating,
  });

  Destination copyWith({
    String? name,
    String? description,
    String? imageURL,
    num? rating,
  }) {
    return Destination(
      name: name ?? this.name,
      description: description ?? this.description,
      imageURL: imageURL ?? this.imageURL,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'imageURL': imageURL,
      'rating': rating,
    };
  }

  factory Destination.fromMap(Map<String, dynamic> map) {
    return Destination(
      name: map['name'] as String,
      description: map['description'] as String,
      imageURL: map['imageURL'] as String,
      rating: map['rating'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory Destination.fromJson(String source) =>
      Destination.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Destinations(name: $name, description: $description, imageURL: $imageURL, rating: $rating)';
  }

  @override
  bool operator ==(covariant Destination other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.description == description &&
        other.imageURL == imageURL &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        description.hashCode ^
        imageURL.hashCode ^
        rating.hashCode;
  }
}
