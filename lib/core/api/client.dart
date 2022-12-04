import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/home/data/models/banners_response.dart';
import '../../features/home/data/models/events_response.dart';

part 'client.g.dart';

@RestApi(baseUrl: "")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/events/date")
  Future<EventsResponse> getEventsByDate(
    @Query("d") String date,
    @Query("limit") int limit,
    @Query("page") int page,
    @Query("type") String? type,
  );

  @GET("/events/search")
  Future<EventsResponse> search(
    @Query("q") String query,
    @Query("limit") int limit,
    @Query("page") int page,
  );

  @GET("/banners")
  Future<BannersResponse> getBanners();
}
