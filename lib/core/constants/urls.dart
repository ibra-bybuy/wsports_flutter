import 'package:flutter/foundation.dart';

class Urls {
  static const apiUrl = kDebugMode ? "http://localhost:3006/api/v1" : "";
  static const commentsSocket =
      kDebugMode ? "http://localhost:3009/comments" : "";
}
