import 'package:equatable/equatable.dart';
import 'package:watch_sports/core/errors/failures.dart';

import '../../../domain/entities/app_versions_response_entities.dart';

abstract class AppVersionsState extends Equatable {
  const AppVersionsState();

  @override
  List<Object> get props => [];
}

class AppVersionsInitial extends AppVersionsState {}

class AppVersionsLoading extends AppVersionsState {}

class AppVersionsLoaded extends AppVersionsState {
  final AppVersionsResponseEntities response;
  const AppVersionsLoaded(this.response);
  @override
  List<Object> get props => [response];
}

class AppVersionsError extends AppVersionsState {
  final Failure response;
  const AppVersionsError(this.response);
  @override
  List<Object> get props => [response];
}
