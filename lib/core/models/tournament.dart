// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Tournament extends Equatable {
  final String code;
  final String name;
  const Tournament({
    this.code = '',
    this.name = "",
  });

  Tournament copyWith({
    String? code,
    String? name,
  }) {
    return Tournament(
      code: code ?? this.code,
      name: name ?? this.name,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [code, name];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'name': name,
    };
  }

  factory Tournament.fromMap(Map<String, dynamic> map) {
    return Tournament(
      code: (map["code"] ?? '') as String,
      name: (map["name"] ?? '') as String,
    );
  }
}
