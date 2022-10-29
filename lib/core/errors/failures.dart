import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final List<dynamic> properties;
  const Failure(this.message, [this.properties = const <dynamic>[]]);

  @override
  List<Object> get props => [properties];
}

class ServerFailure extends Failure {
  final int statusCode;
  const ServerFailure(String message, this.statusCode) : super(message);

  @override
  List<Object> get props => [message, statusCode];
}

class UnknownFailure extends Failure {
  const UnknownFailure({String msg = "unrecognized error"}) : super(msg);

  @override
  List<Object> get props => [message];
}

class IncorrectFormatFailure extends Failure {
  const IncorrectFormatFailure({String msg = "incorrect format"}) : super(msg);

  @override
  List<Object> get props => [message];
}

class ApiResponseFailure extends Failure {
  final int statusCode;
  const ApiResponseFailure(String msg, this.statusCode) : super(msg);

  @override
  List<Object> get props => [message, statusCode];
}
