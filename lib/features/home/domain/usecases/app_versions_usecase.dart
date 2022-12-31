import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/features/home/domain/repositories/app_versions_repository.dart';

import '../entities/app_versions_response_entities.dart';

@LazySingleton()
class AppVersionsUseCase implements AppVersionsRepository {
  final AppVersionsRepository repository;
  const AppVersionsUseCase(this.repository);

  @override
  Future<Either<Failure, AppVersionsResponseEntities>> call(String platform) {
    return repository.call(platform);
  }
}
