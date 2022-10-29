// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String name;
  const User({
    this.name = '',
  });

  User copyWith({
    String? name,
  }) {
    return User(
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: (map["name"] ?? '') as String,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [name];
}
