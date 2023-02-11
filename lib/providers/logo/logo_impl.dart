import 'package:injectable/injectable.dart';
import 'package:watch_sports/providers/logo/logo_assets.dart';

import 'logo_provider.dart';

@LazySingleton(as: LogoProvider)
class LogoProviderImpl implements LogoProvider {
  @override
  LogoAsset? getAssetBy(String name) {
    final items = name.split(" ");

    for (final item in items) {
      final logo = LogoAsset.findByAlias(item);
      if (logo != null) {
        return logo;
      }
    }

    return null;
  }
}
