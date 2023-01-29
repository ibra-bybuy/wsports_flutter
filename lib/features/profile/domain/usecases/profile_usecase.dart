import 'package:injectable/injectable.dart';

import '../repositories/profile_repository.dart';

@LazySingleton()
class ProfileUsecase implements ProfileRepository {
  final ProfileRepository repository;
  const ProfileUsecase(this.repository);
}
