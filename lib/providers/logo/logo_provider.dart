import 'logo_assets.dart';

abstract class LogoProvider {
  LogoAsset? getAssetBy(String name);
}
