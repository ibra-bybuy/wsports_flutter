import 'package:injectable/injectable.dart';
import 'package:watch_sports/generated/proto/comment.pb.dart';
import 'package:watch_sports/generated/proto/comment_request.pbserver.dart';
import 'package:watch_sports/generated/proto/token.pb.dart';
import '../../../../core/cubits/cached/urls_cubit/urls_cubit.dart';
import '../../../../providers/websocket/socket_io.dart';
import '../../../../providers/websocket/websocket_provider.dart';
import 'comment_section_source.dart';

@LazySingleton(as: CommentSectionSource)
class CommentSectionWebsocketSource implements CommentSectionSource {
  final WebSocketProvider webSocketProvider;
  final UrlsCubit urlsCubit;
  const CommentSectionWebsocketSource(
    @Named(socketIoImpl) this.webSocketProvider,
    this.urlsCubit,
  );

  @override
  void init() {
    webSocketProvider.connect(url: urlsCubit.state.commentsUrl);
  }

  @override
  void onNewToken(void Function(TokenProto) fn) {
    webSocketProvider.onEvent("/token", (data) {
      TokenProto token = TokenProto.fromBuffer(data);
      fn.call(token);
    });
  }

  @override
  void dispose() {
    webSocketProvider.dispose();
  }

  @override
  Future<void> sendComment(CommentRequestProto comment) async {
    webSocketProvider.emit("/comment", data: comment.writeToBuffer());
  }

  @override
  void onNewComment(String eventId, void Function(CommentProto p1) fn) {
    webSocketProvider.onEvent("/${eventId}", (data) {
      CommentProto token = CommentProto.fromBuffer(data);
      fn.call(token);
    });
  }
}
