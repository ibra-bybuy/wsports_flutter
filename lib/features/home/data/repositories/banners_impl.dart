import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/home/domain/entities/banners_response_entities.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/features/home/domain/repositories/banners_repository.dart';

import '../sources/banners_source.dart';

@LazySingleton(as: BannersRepository)
class BannersRepositoryImpl implements BannersRepository {
  final BannersSource source;
  const BannersRepositoryImpl(this.source);

  @override
  Future<Either<Failure, BannersResponseEntities>> call() async {
    try {
      final response = await source.call();

      return Right(BannersResponseEntities(items: response.data));
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
