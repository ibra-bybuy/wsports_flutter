import 'package:dio/dio.dart';

import 'failures.dart';

class HandleDioError<T> {
  final Object e;
  final bool Function(int statusCode, DioError err)? shouldRetry;
  final Future<T> Function()? retryFunc;
  const HandleDioError(
    this.e, {
    this.shouldRetry,
    this.retryFunc,
  });

  Future<T> call() async {
    final error = e;
    if (error is DioError) {
      final statusCode = error.response?.statusCode;
      if (retryFunc != null &&
          shouldRetry?.call(statusCode ?? 0, error) == true) {
        return retryFunc!();
      }
      throw ServerFailure("", statusCode ?? 0);
    }

    throw const UnknownFailure();
  }
}
