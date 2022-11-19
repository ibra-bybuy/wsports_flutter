import 'package:watch_sports/generated/proto/comment.pbserver.dart';

import '../models/comment.dart';

extension CommentProtoExt on CommentProto {
  Comment toLocal() {
    return Comment(
      id: id,
      name: user.name,
      body: body,
      createdAt: dateTime,
      device: device,
    );
  }
}
