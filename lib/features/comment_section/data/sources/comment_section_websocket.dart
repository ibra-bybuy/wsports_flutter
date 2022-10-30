import 'package:injectable/injectable.dart';
import 'comment_section_source.dart';

@LazySingleton(as: CommentSectionSource)
class CommentSectionWebsocketSource implements CommentSectionSource {}
