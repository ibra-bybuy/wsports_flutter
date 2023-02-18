import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/i18n/i18n.dart';

import '../cubits/cached/urls_cubit/urls_cubit.dart';
import 'client.dart';
import 'interceptors/log_interceptor.dart';

@Injectable()
class MainApi {
  final CustomLogInterceptor customLogInterceptor;
  final UrlsCubit urlsCubit;
  const MainApi(this.urlsCubit, this.customLogInterceptor);

  RestClient client({
    String? baseUrl,
  }) {
    final dio = dioClient();

    return RestClient(dio, baseUrl: baseUrl ?? urlsCubit.baseUrl);
  }

  Dio dioClient() {
    final dio = Dio(
      BaseOptions(
        headers: {
          "X-Requested-With": "XMLHttpRequest",
          "Content-Type": "application/json",
          "Accept": "*/*",
          "Accept-Encoding": "gzip, deflate, br",
          "Lang": localizationInstance.lang.code,
        },
      ),
    );

    dio.interceptors.add(customLogInterceptor);

    return dio;
  }
}
