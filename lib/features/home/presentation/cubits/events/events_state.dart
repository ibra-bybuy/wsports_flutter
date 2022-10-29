import 'package:equatable/equatable.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../../../domain/entities/events_response_entities.dart';

abstract class EventsState extends Equatable {
  const EventsState();

  @override
  List<Object> get props => [];
}

class EventsInitial extends EventsState {}

class EventsLoading extends EventsState {}

class EventsLoaded extends EventsState {
  final EventsResponseEntities response;
  const EventsLoaded(this.response);
  @override
  List<Object> get props => [response];
}

class EventsError extends EventsState {
  final Failure response;
  const EventsError(this.response);
  @override
  List<Object> get props => [response];
}
