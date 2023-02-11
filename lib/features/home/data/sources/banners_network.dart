import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/api/main_api.dart';
import 'package:watch_sports/features/home/data/models/banners_response.dart';
import '../../../../core/errors/handle_dio_error.dart';
import 'banners_source.dart';

@LazySingleton(as: BannersSource)
class BannersNetworkSource implements BannersSource {
  final MainApi api;
  const BannersNetworkSource(this.api);

  @override
  Future<BannersResponse> call() async {
    try {
      final response = await api.client().getBanners();
      return response;
    } catch (e) {
      return HandleDioError<BannersResponse>(e)();
    }
  }
}
