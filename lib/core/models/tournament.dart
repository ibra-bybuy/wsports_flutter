// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Tournament extends Equatable {
  final String name;
  const Tournament({
    this.name = "",
  });

  Tournament copyWith({
    String? name,
  }) {
    return Tournament(
      name: name ?? this.name,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [name];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory Tournament.fromMap(Map<String, dynamic> map) {
    return Tournament(
      name: (map["name"] ?? '') as String,
    );
  }
}
