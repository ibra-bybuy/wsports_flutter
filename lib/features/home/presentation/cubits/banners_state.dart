import 'package:equatable/equatable.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/features/home/domain/entities/banners_response_entities.dart';

abstract class BannersState extends Equatable {
  const BannersState();

  @override
  List<Object> get props => [];
}

class BannersInitial extends BannersState {}

class BannersLoading extends BannersState {}

class BannersLoaded extends BannersState {
  final BannersResponseEntities response;
  const BannersLoaded(this.response);
  @override
  List<Object> get props => [response];
}

class BannersError extends BannersState {
  final Failure response;
  const BannersError(this.response);
  @override
  List<Object> get props => [response];
}
