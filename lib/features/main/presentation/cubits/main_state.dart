import 'package:equatable/equatable.dart';

abstract class MainState extends Equatable {
  const MainState();

  @override
  List<Object> get props => [];
}

class MainInitial extends MainState {}

class MainLoading extends MainState {}

class MainError extends MainState {
  const MainError();
  @override
  List<Object> get props => [];
}

class MainLoaded extends MainState {
  const MainLoaded();
  @override
  List<Object> get props => [];
}
