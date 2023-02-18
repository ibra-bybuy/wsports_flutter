import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:watch_sports/features/tournament_details/data/models/events_details_response.dart';
import 'package:watch_sports/features/tournaments/data/models/tournaments_response_dto.dart';

import '../../features/event_details/data/models/event_details_response.dart';
import '../../features/fighter/data/models/ufc_search_response_dto.dart';
import '../../features/home/data/models/app_versions_response.dart';
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

  @GET("/events/{id}")
  Future<EventDetailsResponse> getEventById(
    @Path("id") String eventId,
  );

  @GET("/events/tournament")
  Future<EventsDetailsResponse> getTournamentEvents(
    @Query("name") String name,
    @Query("startTime") String startTime,
  );

  @GET("/banners")
  Future<BannersResponse> getBanners();

  @GET("/app")
  Future<AppVersionsResponse> getAppVersions(
    @Query("platform") String platform,
  );

  @GET("/tournaments")
  Future<TournamentsResponseDto> getTournaments(
    @Query("d") String date,
    @Query("type") String? type,
    @Query("page") int page,
    @Query("limit") int limit,
  );

  @GET('/iframe.js')
  Future<String> getUfcIframe();

  @GET('/accounts/me/answers/query')
  Future<UfcSearchResponseDto> searchFighter(
    @Query('input') String query,
    @Query('experienceKey') String experienceKey,
    @Query('api_key') String apiKey,
    @Query('v') String v,
    @Query('version') String version,
  );
}
