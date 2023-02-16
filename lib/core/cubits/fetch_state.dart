import 'package:equatable/equatable.dart';
import 'package:watch_sports/core/errors/failures.dart';

abstract class FetchState<T> extends Equatable {
  const FetchState();

  @override
  List<Object?> get props => [];
}

class FetchInitial<T> extends FetchState<T> {}

class FetchLoading<T> extends FetchState<T> {}

class FetchError<T> extends FetchState<T> {
  final Failure failure;
  const FetchError(this.failure);
  @override
  List<Object> get props => [failure];
}

class FetchLoaded<T> extends FetchState<T> {
  final T response;
  const FetchLoaded(this.response);
  @override
  List<Object?> get props => [response];
}
