import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/cubits/cached/urls_cubit/urls_cubit.dart';
import 'package:watch_sports/core/cubits/cached/user_cubit/user_cubit.dart';
import 'package:watch_sports/core/cubits/custom/comments_cubit/comments_cubit.dart';
import 'package:watch_sports/core/models/comment.dart';
import 'package:watch_sports/providers/websocket/socket_io.dart';
import 'package:watch_sports/providers/websocket/websocket_provider.dart';
import '../../data/models/ws_comment_request.dart';
import 'comment_section_state.dart';

const _event = "comment";

@LazySingleton()
class CommentSectionCubit extends Cubit<CommentSectionState> {
  final UserCubit userCubit;
  final WebSocketProvider webSocketProvider;
  final UrlsCubit urlsCubit;
  CommentSectionCubit(
    this.userCubit,
    @Named(socketIoImpl) this.webSocketProvider,
    this.urlsCubit,
  ) : super(CommentSectionInitial());

  void initSocket(String eventId) {
    final commentSectionCubit = getCommentsCubit(eventId);
    webSocketProvider.connect(url: urlsCubit.state.commentsUrl);
    webSocketProvider.onEvent(eventId, (data) {
      final response = WsCommentRequest.fromJson(data);
      if (response != null) {
        commentSectionCubit.add(response.comments);
      }
    });
  }

  void disposeSocket() {
    webSocketProvider.dispose();
  }

  final Map<String, CommentsCubit> _commentCubits = {};

  void send(String text, String eventId) {
    final comment = _makeComment(text);
    webSocketProvider.emit(
      _event,
      data: WsCommentRequest(
        comments: [comment.toCommentApi],
        event: eventId,
      ).toJson(),
    );
  }

  CommentsCubit getCommentsCubit(String eventId) {
    if (!_commentCubits.containsKey(eventId)) {
      _commentCubits[eventId] = CommentsCubit();
    }

    return _commentCubits[eventId]!;
  }

  Comment _makeComment(String text) {
    return Comment(
      name: userCubit.name,
      body: text,
      createdAt: DateTime.now().toString(),
    );
  }
}
