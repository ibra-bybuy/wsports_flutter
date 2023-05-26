import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:watch_sports/features/tournaments/data/models/tournaments_response_dto.dart';

import '../../features/event_details/data/models/event_details_response.dart';
import '../../features/event_details/data/models/score_response_dto.dart';
import '../../features/fighter/data/models/ufc_search_response_dto.dart';
import '../../features/home/data/models/app_versions_response.dart';
import '../../features/home/data/models/banners_response.dart';
import '../../features/home/data/models/events_response.dart';

part 'client.g.dart';

@RestApi(baseUrl: "")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/events")
  Future<EventsResponse> getEventsBySport(
    @Query("limit") int limit,
    @Query("page") int page,
    @Query("sport") String sport,
  );

  @GET("/events")
  Future<EventsResponse> search(
    @Query("query") String query,
    @Query("limit") int limit,
    @Query("page") int page,
  );

  @GET("/events")
  Future<EventDetailsResponse> getEventById(
    @Query("id") String eventId,
  );

  @GET("/events")
  Future<EventsResponse> getTournamentEvents(
    @Query("tournament") String tournament,
    @Query("limit") int limit,
    @Query("page") int page,
  );

  @GET("/banners")
  Future<BannersResponse> getBanners();

  @GET("/app")
  Future<AppVersionsResponse> getAppVersions(
    @Query("platform") String platform,
  );

  @GET("/tournaments")
  Future<TournamentsResponseDto> getTournaments();

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

  @GET('/app/live/soccer/3')
  Future<ScoreResponseDto> getScores();
}
