import 'package:watch_sports/core/models/comment.dart';

abstract class CommentSectionRepository {
  void onNewToken(void Function(String) fn);
  Future<void> dispose();
  Future<void> init();

  Future<bool> sendComment(String eventId, String token, Comment entities);
  void onNewComment(String eventId, void Function(Comment) fn);
}
