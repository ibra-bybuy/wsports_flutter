// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

enum CommentStatus { sending, sent, error }

class Comment extends Equatable {
  final String id;
  final String name;
  final List<int> avatarBytes;
  final String body;
  final String createdAt;
  final String device;
  // enum
  final CommentStatus status;
  const Comment({
    this.id = '',
    this.name = '',
    this.avatarBytes = const [],
    this.body = '',
    this.createdAt = '',
    this.device = '',
    this.status = CommentStatus.sending,
  });

  Comment copyWith({
    String? id,
    String? name,
    List<int>? avatarBytes,
    String? body,
    String? createdAt,
    String? device,
    CommentStatus? status,
  }) {
    return Comment(
      id: id ?? this.id,
      name: name ?? this.name,
      avatarBytes: avatarBytes ?? this.avatarBytes,
      body: body ?? this.body,
      createdAt: createdAt ?? this.createdAt,
      device: device ?? this.device,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'avatarBytes': avatarBytes,
      'body': body,
      'createdAt': createdAt,
      'device': device,
      'status': status.index,
    };
  }

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      id: (map["id"] ?? '') as String,
      name: (map["name"] ?? '') as String,
      avatarBytes: List<int>.from(
        ((map['avatarBytes'] ?? const <int>[]) as List<int>),
      ),
      body: (map["body"] ?? '') as String,
      createdAt: (map["createdAt"] ?? '') as String,
      device: (map["device"] ?? '') as String,
      status: CommentStatus.values[(map['status'] ?? 0) as int],
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
  List<Object> get props {
    return [
      id,
      name,
      avatarBytes,
      body,
      createdAt,
      device,
      status,
    ];
  }

  DateTime? get createdAtDateTime {
    return DateTime.tryParse(createdAt);
  }

  bool get isSending => status == CommentStatus.sending;
  bool get isError => status == CommentStatus.error;
}
