import 'package:watch_sports/core/extensions/string.dart';

class UfcUtils {
  static const urlNameIdentififes = "event_results_athlete_headshot";

  static String getNameByUrl(String url) {
    final splitBySlash = url.split("/");

    if (splitBySlash.last.isImageFormat) {
      final splitByUnderScore = splitBySlash.last.split("_");

      if (splitByUnderScore.length > 1) {
        final name = splitByUnderScore
            .where((element) => !element.isImageFormat)
            .toList()
            .join(" ");

        return name.trim();
      }
    }

    return "";
  }
}
