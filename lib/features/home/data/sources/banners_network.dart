import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/api/main_api.dart';
import 'package:watch_sports/features/home/data/models/banners_response.dart';
import '../../../../core/errors/failures.dart';
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
      if (e is DioError) {
        throw ServerFailure("", e.response?.statusCode ?? 0);
      }

      throw const UnknownFailure();
    }
  }
}
