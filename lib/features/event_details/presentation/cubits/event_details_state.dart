import 'package:equatable/equatable.dart';
import 'package:watch_sports/features/event_details/domain/entities/event_details_response_entities.dart';

import '../../../../core/errors/failures.dart';

abstract class EventDetailsState extends Equatable {
  const EventDetailsState();

  @override
  List<Object> get props => [];
}

class EventDetailsInitial extends EventDetailsState {}

class EventDetailsLoading extends EventDetailsState {}

class EventDetailsLoaded extends EventDetailsState {
  final EventDetailsResponseEntities response;
  const EventDetailsLoaded(this.response);
  @override
  List<Object> get props => [response];
}

class EventDetailsError extends EventDetailsState {
  final Failure response;
  const EventDetailsError(this.response);
  @override
  List<Object> get props => [response];
}
