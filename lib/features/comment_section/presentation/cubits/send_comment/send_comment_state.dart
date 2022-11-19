import 'package:equatable/equatable.dart';

abstract class SendCommentState extends Equatable {
  const SendCommentState();

  @override
  List<Object> get props => [];
}

class SendCommentInitial extends SendCommentState {}

class SendCommentLoading extends SendCommentState {}

class SendCommentLoaded extends SendCommentState {
  const SendCommentLoaded();
  @override
  List<Object> get props => [];
}
