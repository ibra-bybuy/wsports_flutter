import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/event_details/domain/entities/event_details_response_entities.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../../domain/repositories/event_details_repository.dart';
import '../sources/event_details_source.dart';

@LazySingleton(as: EventDetailsRepository)
class EventDetailsRepositoryImpl implements EventDetailsRepository {
  final EventDetailsSource source;
  const EventDetailsRepositoryImpl(this.source);

  @override
  Future<Either<Failure, EventDetailsResponseEntities>> call(
      String eventId) async {
    try {
      final res = await source.call(eventId);

      return Right(EventDetailsResponseEntities(event: res.data));
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
