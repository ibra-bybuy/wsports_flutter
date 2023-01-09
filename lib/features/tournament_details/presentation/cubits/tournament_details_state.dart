import 'package:equatable/equatable.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/tournament_details_response_entities.dart';

abstract class TournamentDetailsState extends Equatable {
  const TournamentDetailsState();

  @override
  List<Object> get props => [];
}

class TournamentDetailsInitial extends TournamentDetailsState {}

class TournamentDetailsLoading extends TournamentDetailsState {}

class TournamentDetailsLoaded extends TournamentDetailsState {
  final TournamentDetailsResponseEntities response;
  const TournamentDetailsLoaded(this.response);
  @override
  List<Object> get props => [response];
}

class TournamentDetailsError extends TournamentDetailsState {
  final Failure response;
  const TournamentDetailsError(this.response);
  @override
  List<Object> get props => [response];
}
