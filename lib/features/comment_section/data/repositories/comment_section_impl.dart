import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/extensions/comment.dart';
import 'package:watch_sports/core/extensions/comment_proto.dart';
import '../../../../core/models/comment.dart';
import '../../domain/repositories/comment_section_repository.dart';
import '../sources/comment_section_source.dart';

@LazySingleton(as: CommentSectionRepository)
class CommentSectionRepositoryImpl implements CommentSectionRepository {
  final CommentSectionSource source;
  const CommentSectionRepositoryImpl(this.source);

  @override
  Future<void> init() async {
    source.init();
  }

  @override
  Future<void> dispose() async {
    source.dispose();
  }

  @override
  void onNewToken(void Function(String p1) fn) {
    source.onNewToken((proto) {
      fn.call(proto.token);
    });
  }

  @override
  Future<bool> sendComment(String eventId, Comment entities) async {
    source.sendComment(entities.toProto(eventId));

    return true;
  }

  @override
  void onNewComment(String eventId, void Function(Comment p1) fn) {
    source.onNewComment(eventId, (comment) {
      fn.call(comment.toLocal());
    });
  }
}
