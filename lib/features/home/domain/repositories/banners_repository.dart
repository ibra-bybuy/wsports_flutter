import 'package:dartz/dartz.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/features/home/domain/entities/banners_response_entities.dart';

abstract class BannersRepository {
  Future<Either<Failure, BannersResponseEntities>> call();
}
