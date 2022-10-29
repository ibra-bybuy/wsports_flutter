// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Comment extends Equatable {
  final String name;
  final String body;
  final String createdAt;
  const Comment({
    this.name = '',
    this.body = '',
    this.createdAt = '',
  });

  Comment copyWith({
    String? name,
    String? body,
    String? createdAt,
  }) {
    return Comment(
      name: name ?? this.name,
      body: body ?? this.body,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'body': body,
      'createdAt': createdAt,
    };
  }

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      name: (map["name"] ?? '') as String,
      body: (map["body"] ?? '') as String,
      createdAt: (map["createdAt"] ?? '') as String,
    );
  }

  List<Map<String, dynamic>> toWebSocket() {
    return [toMap()];
  }

  static List<Comment>? fromWebSocket(List<Map<String, dynamic>> data) {
    try {
      return data.map((e) => Comment.fromMap(e)).toList();
    } catch (_) {
      return null;
    }
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [name, body, createdAt];

  DateTime? get createdAtDateTime {
    return DateTime.tryParse(createdAt);
  }
}
