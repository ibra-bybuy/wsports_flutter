import 'package:flutter/foundation.dart';

class Urls {
  static const apiUrl = kDebugMode
      ? "http://94.131.106.27:3006/api/v1"
      : "http://94.131.106.27:3006/api/v1";
  static const commentsSocket = kDebugMode
      ? "http://84.246.85.197:3009/comments"
      : "http://84.246.85.197:3009/comments";
}
