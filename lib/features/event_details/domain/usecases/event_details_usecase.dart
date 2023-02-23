import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/features/event_details/domain/entities/event_details_response_entities.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../repositories/event_details_repository.dart';

@LazySingleton()
class EventDetailsUsecase implements EventDetailsRepository {
  final EventDetailsRepository repository;
  const EventDetailsUsecase(this.repository);

  @override
  Future<Either<Failure, EventDetailsResponseEntities>> getDetails(
      String eventId) {
    return repository.getDetails(eventId);
  }
}
