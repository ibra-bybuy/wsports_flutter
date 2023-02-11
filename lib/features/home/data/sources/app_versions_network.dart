import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/api/main_api.dart';
import '../../../../core/errors/handle_dio_error.dart';
import '../models/app_versions_response.dart';
import 'app_versions_source.dart';

@LazySingleton(as: AppVersionsSource)
class AppVersionsNetwork implements AppVersionsSource {
  final MainApi api;
  const AppVersionsNetwork(this.api);

  @override
  Future<AppVersionsResponse> call(String platform) async {
    try {
      final response = await api.client().getAppVersions(platform);
      return response;
    } catch (e) {
      return HandleDioError<AppVersionsResponse>(e)();
    }
  }
}
