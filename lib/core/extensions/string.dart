extension StringExt on String {
  bool get isSvg => contains(".svg");
  String get removeNumbers => replaceAll(RegExp(r"[0-9]"), "");
  String get leaveOnlyEng => replaceAll(RegExp(r"[^A-Za-z]"), "");
}
