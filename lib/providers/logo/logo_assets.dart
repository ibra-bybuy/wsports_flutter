import '../../core/constants/svg_pictures.dart';

enum LogoAsset {
  ufc(["ufc"], SvgPictures.ufc),
  fifa(["fifa"], SvgPictures.fifa);

  final List<String> alias;
  final String asset;
  const LogoAsset(this.alias, this.asset);

  static LogoAsset? findByAlias(String name) {
    for (final item in LogoAsset.values) {
      final aliases = item.alias.join(",").toLowerCase();

      if (aliases.contains(name.toLowerCase())) {
        return item;
      }
    }

    return null;
  }
}
