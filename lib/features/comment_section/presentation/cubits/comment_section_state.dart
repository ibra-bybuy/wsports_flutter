import 'package:equatable/equatable.dart';

abstract class CommentSectionState extends Equatable {
  const CommentSectionState();

  @override
  List<Object> get props => [];
}

class CommentSectionInitial extends CommentSectionState {}

class CommentSectionLoading extends CommentSectionState {}

class CommentSectionLoaded extends CommentSectionState {
  const CommentSectionLoaded();
  @override
  List<Object> get props => [];
}
