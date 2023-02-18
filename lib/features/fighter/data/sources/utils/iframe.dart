class FighterUtilsIframe {
  final String data;
  const FighterUtilsIframe(this.data);

  String getApiKey() {
    final regex =
        RegExp(r'apiKey.+?(?=\,)', caseSensitive: false, multiLine: true);
    final match = regex.firstMatch(data);
    final matchStr = match?.group(0)?.replaceAll('"', "");
    final apiKey = matchStr?.split(":");

    return apiKey?.length == 2 ? apiKey![1].trim() : "";
  }
}
