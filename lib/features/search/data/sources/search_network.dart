import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/api/main_api.dart';
import 'package:watch_sports/features/home/data/models/events_response.dart';
import '../../../../core/errors/failures.dart';
import 'search_source.dart';

@LazySingleton(as: SearchSource)
class SearchNetworkSource implements SearchSource {
  final MainApi api;
  const SearchNetworkSource(this.api);

  @override
  Future<EventsResponse> search(
    String query,
    int limit,
    int page,
  ) async {
    try {
      final response = await api.client().search(
            query,
            limit,
            page,
          );
      return response;
    } catch (e) {
      if (e is DioError) {
        throw ServerFailure("", e.response?.statusCode ?? 0);
      }

      throw const UnknownFailure();
    }
  }
}
