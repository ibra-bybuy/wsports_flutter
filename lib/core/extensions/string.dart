extension StringExt on String {
  bool get isSvg => toLowerCase().contains(".svg");
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
}
