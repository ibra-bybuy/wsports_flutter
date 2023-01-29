import 'package:injectable/injectable.dart';

import '../../domain/repositories/profile_repository.dart';
import '../sources/profile_source.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileSource source;

  const ProfileRepositoryImpl(this.source);
}
