import 'package:injectable/injectable.dart';
import 'banners_source.dart';

@LazySingleton(as: BannersSource)
class BannersNetworkSource implements BannersSource {}
