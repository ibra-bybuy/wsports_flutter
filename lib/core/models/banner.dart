// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Banner extends Equatable {
  final String imageUrl;
  final String routeUrl;
  const Banner({
    this.imageUrl = '',
    this.routeUrl = '',
  });

  Banner copyWith({
    String? imageUrl,
    String? routeUrl,
  }) {
    return Banner(
      imageUrl: imageUrl ?? this.imageUrl,
      routeUrl: routeUrl ?? this.routeUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUrl': imageUrl,
      'routeUrl': routeUrl,
    };
  }

  factory Banner.fromMap(Map<String, dynamic> map) {
    return Banner(
      imageUrl: (map["imageUrl"] ?? '') as String,
      routeUrl: (map["routeUrl"] ?? '') as String,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [imageUrl, routeUrl];
}
