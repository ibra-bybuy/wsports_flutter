import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../cubits/cached/urls_cubit/urls_cubit.dart';
import 'client.dart';
import 'interceptors/log_interceptor.dart';

@Injectable()
class MainApi {
  final CustomLogInterceptor customLogInterceptor;
  final UrlsCubit urlsCubit;
  const MainApi(this.urlsCubit, this.customLogInterceptor);

  RestClient client() {
    final dio = Dio(
      BaseOptions(
        headers: {
          "X-Requested-With": "XMLHttpRequest",
          "Content-Type": "application/json",
          "Accept": "*/*",
          "Accept-Encoding": "gzip, deflate, br",
        },
      ),
    );

    dio.interceptors.add(customLogInterceptor);

    return RestClient(dio, baseUrl: urlsCubit.baseUrl);
  }
}
