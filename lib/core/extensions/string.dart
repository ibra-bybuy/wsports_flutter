import 'package:html/parser.dart';

import '../functions/ufc_utils.dart';

extension StringExt on String {
  bool get isSvg => toLowerCase().contains(".svg");
  bool get isPng => toLowerCase().contains(".png");
  bool get isJpg =>
      toLowerCase().contains(".jpg") || toLowerCase().contains(".jpeg");
  bool get isWebp => toLowerCase().contains(".webp");
  bool get isImageFormat => isSvg || isPng || isJpg || isWebp;
  bool get isUrl => toLowerCase().contains("http");
  String get removeNumbers => replaceAll(RegExp(r"[0-9]"), "");
  String get leaveOnlyEng => replaceAll(RegExp(r"[^A-Za-z]"), "");

  String get cutName {
    final splitName = split(" ");
    if (splitName.length >= 2 &&
        splitName[0].length > 1 &&
        splitName[1].length > 1) {
      return "${splitName[0][0]}${splitName[1][0]}".trim();
    } else if (length >= 2) {
      return "${this[0]}${this[1]}".trim();
    }

    return toUpperCase();
  }

  String get firstWord {
    return split(" ")[0];
  }

  String get urlName {
    if (toLowerCase().contains(UfcUtils.urlNameIdentififes)) {
      return UfcUtils.getNameByUrl(this);
    }

    return "";
  }

  DateTime? get toDateTime {
    return DateTime.tryParse(this);
  }

  String get removeHtml {
    final document = parse(this);

    return parse(document.body?.text).documentElement?.text ?? this;
  }

  String get removeExtraWhitespaces {
    final exp = RegExp(r"\s+");

    return replaceAll(exp, " ");
  }

  bool containsAnyWord(List<String> words) {
    for (final word in words) {
      if (toLowerCase().contains(word.toLowerCase())) {
        return true;
      }
    }

    return false;
  }
}
