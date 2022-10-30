// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages
import 'package:watch_sports/core/models/comment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable()
class CommentApi extends Comment {
  const CommentApi({
    String name = '',
    String body = '',
    String createdAt = '',
  }) : super(name: name, body: body, createdAt: createdAt);

  factory CommentApi.fromJson(Map<String, dynamic> json) =>
      _$CommentApiFromJson(json);
  Map<String, dynamic> toJson() => _$CommentApiToJson(this);
}
