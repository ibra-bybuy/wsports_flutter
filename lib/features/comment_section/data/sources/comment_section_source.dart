import 'package:watch_sports/generated/proto/comment.pb.dart';

import '../../../../generated/proto/comment_request.pb.dart';
import '../../../../generated/proto/token.pb.dart';

abstract class CommentSectionSource {
  void onNewComment(String eventId, void Function(CommentProto) fn);
  void onNewToken(void Function(TokenProto) fn);
  void init();
  void dispose();

  Future<void> sendComment(CommentRequestProto comment);
}
