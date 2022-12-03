import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/search/domain/entities/search_entities.dart';
import 'package:watch_sports/features/home/domain/entities/events_response_entities.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../repositories/search_repository.dart';

@LazySingleton()
class SearchUsecase implements SearchRepository {
  final SearchRepository repository;
  const SearchUsecase(this.repository);

  @override
  Future<Either<Failure, EventsResponseEntities>> call(SearchEntities request) {
    return repository.call(request);
  }
}
