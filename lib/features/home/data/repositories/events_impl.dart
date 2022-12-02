import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/features/home/data/sources/events_source.dart';
import 'package:watch_sports/features/home/domain/entities/events_response_entities.dart';
import 'package:watch_sports/features/home/domain/repositories/events_repository.dart';

import '../../domain/entities/events_request_entities.dart';

@LazySingleton(as: EventsRepository)
class EventsRepositoryImpl implements EventsRepository {
  final EventsSource source;
  const EventsRepositoryImpl(this.source);

  @override
  Future<Either<Failure, EventsResponseEntities>> call(
    EventsRequestEntities request,
  ) async {
    try {
      final res = await source.getEventsByDate(
        request.date,
        request.limit,
        request.page,
        request.type.trim().isNotEmpty ? request.type : null,
      );

      return Right(
        EventsResponseEntities(
          pagination: res.data.meta,
          items: res.data.items,
        ),
      );
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
