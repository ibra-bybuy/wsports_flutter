import '../../../../core/models/comment.dart';

abstract class CommentSectionRepository {
  Future<void> sendComment(String event, List<Comment> comments);
}
