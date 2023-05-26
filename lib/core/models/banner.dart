// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Banner extends Equatable {
  final String code;
  final String name;
  final String avatarUrl;
  const Banner({
    this.code = '',
    this.name = '',
    this.avatarUrl = '',
  });

  Banner copyWith({
    String? code,
    String? name,
    String? avatarUrl,
  }) {
    return Banner(
      code: code ?? this.code,
      name: name ?? this.name,
      avatarUrl: avatarUrl ?? this.avatarUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'name': name,
      'avatarUrl': avatarUrl,
    };
  }

  factory Banner.fromMap(Map<String, dynamic> map) {
    return Banner(
      code: (map["code"] ?? '') as String,
      name: (map["name"] ?? '') as String,
      avatarUrl: (map["avatarUrl"] ?? '') as String,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [code, name, avatarUrl];
}
