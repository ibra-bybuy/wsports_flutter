import '../../setup.dart';

class Urls {
  static String get baseDomain =>
      isProduction ? "https://wsports.app" : "http://192.168.0.100:3006";

  static String get apiUrl =>
      isProduction ? "$baseDomain/api/v1" : "$baseDomain/api/v1";

  static String get commentsSocket => isProduction
      ? "http://94.131.106.27:3009/comments"
      : "http://localhost:3009/comments";
}
