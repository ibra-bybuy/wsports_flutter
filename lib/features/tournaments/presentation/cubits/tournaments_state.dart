import 'package:equatable/equatable.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/features/tournaments/domain/entities/tournament_entity.dart';

abstract class TournamentsState extends Equatable {
  const TournamentsState();

  @override
  List<Object> get props => [];
}

class TournamentsInitial extends TournamentsState {}

class TournamentsLoading extends TournamentsState {}

class TournamentsError extends TournamentsState {
  final Failure response;
  const TournamentsError(this.response);
  @override
  List<Object> get props => [response];
}

class TournamentsLoaded extends TournamentsState {
  final TournamentEntities response;
  const TournamentsLoaded(this.response);
  @override
  List<Object> get props => [response];
}
