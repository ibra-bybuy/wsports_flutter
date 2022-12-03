import 'package:equatable/equatable.dart';

import '../../../../core/errors/failures.dart';
import '../../../home/domain/entities/events_response_entities.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchLoaded extends SearchState {
  final EventsResponseEntities response;
  const SearchLoaded(this.response);
  @override
  List<Object> get props => [response];
}

class SearchError extends SearchState {
  final Failure response;
  const SearchError(this.response);
  @override
  List<Object> get props => [response];
}
