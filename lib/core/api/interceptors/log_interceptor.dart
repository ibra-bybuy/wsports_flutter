import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../providers/logger/logger_provider.dart';

@LazySingleton()
class CustomLogInterceptor implements Interceptor {
  final LoggerProvider loggerProvider;
  const CustomLogInterceptor(this.loggerProvider);

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    loggerProvider.i('''
        ---Request error---

        Uri: ${err.requestOptions.uri} ${err.requestOptions.method}
        Response: ${err.response?.data}
        StatusCode: ${err.response?.statusCode}
        StatusMessage: ${err.response?.statusMessage}
    ''');

    return handler.next(err);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.data is FormData) {
      final data = options.data as FormData;
      loggerProvider.i('''
        ---Making a request---

        Uri: ${options.uri} ${options.method}
        Data: ${data.fields}
        Files: ${data.files}
        Params: ${options.queryParameters}
        Headers: ${options.headers}
    ''');
    } else {
      loggerProvider.i('''
        ---Making a request---

        Uri: ${options.uri} ${options.method}
        Data: ${options.data}
        Params: ${options.queryParameters}
        Headers: ${options.headers}
    ''');
    }

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    loggerProvider.i('''
        ---RESPONSE---
        Uri ${response.realUri}
        Data: ${response.data}
        Headers: ${response.headers}
    ''');

    return handler.next(response);
  }
}
