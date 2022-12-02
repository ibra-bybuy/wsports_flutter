import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CacheManager {
  final def = DefaultCacheManager();
}
