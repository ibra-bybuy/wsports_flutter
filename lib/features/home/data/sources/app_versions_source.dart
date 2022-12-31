import '../models/app_versions_response.dart';

abstract class AppVersionsSource {
  Future<AppVersionsResponse> call(String platform);
}
