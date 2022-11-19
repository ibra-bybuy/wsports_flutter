// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:watch_sports/features/comment_section/data/models/comment.dart';

class Comment extends Equatable {
  final String name;
  final String body;
  final String createdAt;
  final String device;
  const Comment({
    this.name = '',
    this.body = '',
    this.createdAt = '',
    this.device = '',
  });

  Comment copyWith({
    String? name,
    String? body,
    String? createdAt,
    String? device,
  }) {
    return Comment(
      name: name ?? this.name,
      body: body ?? this.body,
      createdAt: createdAt ?? this.createdAt,
      device: device ?? this.device,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'body': body,
      'createdAt': createdAt,
      'device': device,
    };
  }

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      name: (map["name"] ?? '') as String,
      body: (map["body"] ?? '') as String,
      createdAt: (map["createdAt"] ?? '') as String,
      device: (map["device"] ?? '') as String,
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
  List<Object> get props => [name, body, createdAt, device];

  DateTime? get createdAtDateTime {
    return DateTime.tryParse(createdAt);
  }

  CommentApi get toCommentApi {
    return CommentApi(name: name, body: body, createdAt: createdAt);
  }
}
