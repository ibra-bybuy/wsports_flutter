class AdBlocker {
  final Uri uri;
  final Uri source;
  const AdBlocker(this.uri, this.source);

  bool get block {
    if (!uri.host.contains(source.host)) {
      return true;
    } else if (uri.path.toLowerCase().contains("redirect")) {
      return true;
    }

    return false;
  }
}
