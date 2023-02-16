import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/models/fighter.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../../domain/repositories/fighter_repository.dart';
import '../sources/fighter_source.dart';

@LazySingleton(as: FighterRepository)
class FighterRepositoryImpl implements FighterRepository {
  final FighterSource source;
  const FighterRepositoryImpl(this.source);

  @override
  Future<Either<Failure, Fighter>> getFighterByName(String name) async {
    try {
      final response = await source.getFighterByName(name);
      return Right(response);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
