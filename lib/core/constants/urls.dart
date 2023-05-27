import '../../env.dart';

class Urls {
  static const ip = "http://94.131.106.27";
  static const domain = "https://wsports.app";

  static String get baseDomain =>
      isProduction ? domain : "http://localhost:8080";

  static String get apiUrl =>
      isProduction ? "$baseDomain/api/v2" : "$baseDomain/api/v2";

  static String get commentsSocket =>
      isProduction ? "$ip:3009/comments" : "http://localhost:3009/comments";
}
