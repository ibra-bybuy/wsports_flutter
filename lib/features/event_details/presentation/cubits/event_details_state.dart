import 'package:equatable/equatable.dart';

abstract class EventDetailsState extends Equatable {
  const EventDetailsState();

  @override
  List<Object> get props => [];
}

class EventDetailsInitial extends EventDetailsState {}

class EventDetailsLoading extends EventDetailsState {}

class EventDetailsLoaded extends EventDetailsState {
  const EventDetailsLoaded();
  @override
  List<Object> get props => [];
}
