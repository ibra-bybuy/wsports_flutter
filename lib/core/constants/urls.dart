import '../../setup.dart';

class Urls {
  static String get baseDomain =>
      isProduction ? "https://wsports.app" : "http://localhost:3006";

  static String get apiUrl => isProduction
      ? "https://wsports.app/api/v1"
      : "http://localhost:3006/api/v1";

  static String get commentsSocket => isProduction
      ? "http://84.246.85.197:3009/comments"
      : "http://localhost:3009/comments";
}
