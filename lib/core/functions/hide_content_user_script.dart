import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:watch_sports/core/extensions/string.dart';

UserScript? hideContentScript(String str) {
  final elemements = str.split(",");

  if (elemements.length < 2) {
    return null;
  }

  List<String> commands = [];
  for (var element in elemements) {
    element = element.trim();
    final splittedEl = element.split(":");
    if (splittedEl.length >= 2) {
      final className = splittedEl[0].removeFirstLetter;
      final index = splittedEl[1];
      commands.add(
          "document.getElementsByClassName('$className')[$index].style.display = 'none';");
    }
  }

  return UserScript(
    source: commands.join(" "),
    injectionTime: UserScriptInjectionTime.AT_DOCUMENT_END,
  );
}
