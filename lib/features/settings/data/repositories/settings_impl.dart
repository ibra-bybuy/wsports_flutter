import 'package:injectable/injectable.dart';

import '../../domain/repositories/settings_repository.dart';
import '../sources/settings_source.dart';

@LazySingleton(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsSource source;

  const SettingsRepositoryImpl(this.source);
}
