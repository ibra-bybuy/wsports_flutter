import 'package:injectable/injectable.dart';
import '../../../../core/models/comment.dart';
import '../repositories/comment_section_repository.dart';

@LazySingleton()
class CommentSectionUsecase implements CommentSectionRepository {
  final CommentSectionRepository repository;
  const CommentSectionUsecase(this.repository);

  @override
  Future<void> init() {
    return repository.init();
  }

  @override
  Future<void> dispose() {
    return repository.dispose();
  }

  @override
  void onNewToken(void Function(String p1) fn) {
    return repository.onNewToken(fn);
  }

  @override
  Future<bool> sendComment(String eventId, String token, Comment entities) {
    return repository.sendComment(eventId, token, entities);
  }

  @override
  void onNewComment(String eventId, void Function(Comment p1) fn) {
    return repository.onNewComment(eventId, fn);
  }
}
