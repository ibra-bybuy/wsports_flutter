import 'package:dartz/dartz.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../entities/app_versions_response_entities.dart';

abstract class AppVersionsRepository {
  Future<Either<Failure, AppVersionsResponseEntities>> call(String platform);
}
