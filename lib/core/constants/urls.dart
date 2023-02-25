import '../../setup.dart';

class Urls {
  static const domain = "https://wsports.app";

  static String get baseDomain =>
      isProduction ? domain : "http://localhost:3006";

  static String get apiUrl =>
      isProduction ? "$baseDomain/api/v1" : "$baseDomain/api/v1";

  static String get commentsSocket => isProduction
      ? "http://94.131.106.27:3009/comments"
      : "http://localhost:3009/comments";
}
