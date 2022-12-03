// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Team extends Equatable {
  final String name;
  final String avatarUrl;
  const Team({
    this.name = '',
    this.avatarUrl = '',
  });

  Team copyWith({
    String? name,
    String? avatarUrl,
  }) {
    return Team(
      name: name ?? this.name,
      avatarUrl: avatarUrl ?? this.avatarUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'avatarUrl': avatarUrl,
    };
  }

  factory Team.fromMap(Map<String, dynamic> map) {
    return Team(
      name: (map["name"] ?? '') as String,
      avatarUrl: (map["avatarUrl"] ?? '') as String,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [name, avatarUrl];

  Map<String, dynamic> toJson() => toMap();
}
