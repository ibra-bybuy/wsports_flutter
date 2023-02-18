import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final List<dynamic> properties;
  const Failure(this.message, [this.properties = const <dynamic>[]]);

  int get statusCode {
    return 0;
  }

  @override
  List<Object> get props => [properties];
}

class ServerFailure extends Failure {
  @override
  final int statusCode;
  const ServerFailure(String message, this.statusCode) : super(message);

  @override
  List<Object> get props => [message, statusCode];
}

class UnknownFailure extends Failure {
  const UnknownFailure({String msg = ""}) : super(msg);

  @override
  List<Object> get props => [message];
}

class IncorrectFormatFailure extends Failure {
  const IncorrectFormatFailure({String msg = ""}) : super(msg);

  @override
  List<Object> get props => [message];
}

class ApiResponseFailure extends Failure {
  @override
  final int statusCode;
  const ApiResponseFailure(String msg, this.statusCode) : super(msg);

  @override
  List<Object> get props => [message, statusCode];
}
