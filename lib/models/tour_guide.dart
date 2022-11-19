// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TourGuide {
  final String name;
  final String quote;
  final String imageURL;
  final num bill;
  final num rating;

  TourGuide({
    required this.name,
    required this.quote,
    required this.imageURL,
    required this.bill,
    required this.rating,
  });

  TourGuide copyWith({
    String? name,
    String? quote,
    String? imageURL,
    num? bill,
    num? rating,
  }) {
    return TourGuide(
      name: name ?? this.name,
      quote: quote ?? this.quote,
      imageURL: imageURL ?? this.imageURL,
      bill: bill ?? this.bill,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'quote': quote,
      'imageURL': imageURL,
      'bill': bill,
      'rating': rating,
    };
  }

  factory TourGuide.fromMap(Map<String, dynamic> map) {
    return TourGuide(
      name: map['name'] as String,
      quote: map['quote'] as String,
      imageURL: map['imageURL'] as String,
      bill: map['bill'] as num,
      rating: map['rating'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory TourGuide.fromJson(String source) =>
      TourGuide.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TourGuide(name: $name, quote: $quote, imageURL: $imageURL, bill: $bill, rating: $rating)';
  }

  @override
  bool operator ==(covariant TourGuide other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.quote == quote &&
        other.imageURL == imageURL &&
        other.bill == bill &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        quote.hashCode ^
        imageURL.hashCode ^
        bill.hashCode ^
        rating.hashCode;
  }
}
