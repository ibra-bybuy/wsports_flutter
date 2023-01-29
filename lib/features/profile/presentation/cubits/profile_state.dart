import 'package:equatable/equatable.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileError extends ProfileState {
  const ProfileError();
  @override
  List<Object> get props => [];
}

class ProfileLoaded extends ProfileState {
  const ProfileLoaded();
  @override
  List<Object> get props => [];
}
