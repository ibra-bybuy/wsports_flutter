import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/search/domain/entities/search_entities.dart';
import 'package:watch_sports/features/home/domain/entities/events_response_entities.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../../domain/repositories/search_repository.dart';
import '../sources/search_source.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  final SearchSource source;
  const SearchRepositoryImpl(this.source);

  @override
  Future<Either<Failure, EventsResponseEntities>> call(
    SearchEntities request,
  ) async {
    try {
      final res = await source.search(
        request.query,
        request.limit,
        request.page,
      );

      return Right(
        EventsResponseEntities(
          pagination: res.data.pagination,
          items: res.data.items,
        ),
      );
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
