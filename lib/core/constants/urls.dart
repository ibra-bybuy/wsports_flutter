import 'package:flutter/foundation.dart';

class Urls {
  static const apiUrl = kDebugMode ? "" : "";
  static const commentsSocket =
      kDebugMode ? "http://192.168.0.105:3009/comments" : "";
}
