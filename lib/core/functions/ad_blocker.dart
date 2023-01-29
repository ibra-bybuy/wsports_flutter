class AdBlocker {
  final Uri uri;
  final Uri source;
  const AdBlocker(this.uri, this.source);

  bool get block {
    if (!uriBaseDomain.contains(sourceBaseDomain)) {
      return true;
    } else if (uri.path.toLowerCase().contains("redirect")) {
      return true;
    }

    return false;
  }

  String get uriBaseDomain {
    return getBaseDomain(uri.host);
  }

  String get sourceBaseDomain {
    return getBaseDomain(source.host);
  }

  String getBaseDomain(String host) {
    final splitted = host.split(".");

    if (splitted.length > 2) {
      return "${splitted[splitted.length - 2]}.${splitted[splitted.length - 1]}";
    }
    return host;
  }
}
