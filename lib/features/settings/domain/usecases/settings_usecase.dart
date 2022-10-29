import 'package:injectable/injectable.dart';

import '../repositories/settings_repository.dart';

@LazySingleton()
class SettingsUsecase {
  final SettingsRepository repository;
  const SettingsUsecase(this.repository);
}
