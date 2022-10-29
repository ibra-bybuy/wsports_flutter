import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/home/domain/entities/banners_response_entities.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/features/home/domain/repositories/banners_repository.dart';

@LazySingleton()
class BannersUseCase implements BannersRepository {
  final BannersRepository repository;
  const BannersUseCase(this.repository);

  @override
  Future<Either<Failure, BannersResponseEntities>> call() {
    return repository.call();
  }
}
