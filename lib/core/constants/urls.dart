import 'package:flutter/foundation.dart';

class Urls {
  static const apiUrl = kDebugMode ? "http://192.168.0.103:3006/api/v1" : "";
  static const commentsSocket =
      kDebugMode ? "http://192.168.0.103:3009/comments" : "";
}
