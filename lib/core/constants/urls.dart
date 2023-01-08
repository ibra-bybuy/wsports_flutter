import '../../setup.dart';

class Urls {
  static String get apiUrl => isProduction
      ? "http://94.131.106.27:3006/api/v1"
      : "http://localhost:3006/api/v1";
  static String get commentsSocket => isProduction
      ? "http://84.246.85.197:3009/comments"
      : "http://localhost:3009/comments";
}
