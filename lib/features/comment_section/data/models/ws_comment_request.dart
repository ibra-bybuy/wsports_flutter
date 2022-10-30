// ignore_for_file: public_member_api_docs, sort_constructors_first, depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'comment.dart';

part 'ws_comment_request.g.dart';

@JsonSerializable()
class WsCommentRequest {
  final String event;
  final List<CommentApi> comments;
  const WsCommentRequest({
    this.event = '',
    this.comments = const [],
  });
  static WsCommentRequest? fromJson(Map<String, dynamic> json) {
    try {
      return _$WsCommentRequestFromJson(json);
    } catch (e) {
      return null;
    }
  }

  Map<String, dynamic> toJson() => _$WsCommentRequestToJson(this);
}
