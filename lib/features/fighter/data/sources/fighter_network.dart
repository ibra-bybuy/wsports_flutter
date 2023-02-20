import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/api/main_api.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/core/extensions/fighter_dto.dart';
import 'package:watch_sports/core/extensions/ufc_search_response.dart';
import 'package:watch_sports/features/fighter/data/models/fighter_dto.dart';
import 'package:watch_sports/features/fighter/data/sources/utils/iframe.dart';
import 'package:watch_sports/providers/logger/logger_provider.dart';
import '../../../../core/errors/handle_dio_error.dart';
import '../../../../providers/ufc/fighter_page_parser_provider.dart';
import '../models/ufc_search_response_dto.dart';
import 'fighter_source.dart';

const _iframeBaseUrl = 'https://answers-embed-client.ufc.com.pagescdn.com';
const _searchBaseUrl = "https://liveapi.yext.com/v2";

@LazySingleton(as: FighterSource)
class FighterUFCSource implements FighterSource {
  final MainApi api;
  final LoggerProvider logger;
  FighterUFCSource(this.api, this.logger);

  String _ufcUrl = "";
  String _apiKey = "";

  @override
  Future<FighterDto> searchFighterByOpponentName(
      String name, String opponentName) async {
    try {
      final response = await _makeSearchRequest(name);

      final athlete = response.athleteByOpponentName(opponentName);
      if (athlete?.cUFcLink.isNotEmpty == true) {
        _ufcUrl = athlete!.cUFcLink;
        final ufcFighter =
            await UfcFighterPageParserProvider(athlete.cUFcLink, logger: logger)
                .getFighter();
        final fighter = response.toFighterByOpponentName(opponentName);

        if (fighter != null) {
          final finFIghter = fighter.joinBy(ufcFighter);

          return finFIghter;
        }
      }

      throw const ServerFailure("", 404);
    } on Failure {
      rethrow;
    } catch (e) {
      return HandleDioError<FighterDto>(e)();
    }
  }

  Future<String> getApiKey() async {
    if (_apiKey.isEmpty) {
      final iframe = await api.client(baseUrl: _iframeBaseUrl).getUfcIframe();
      _apiKey = FighterUtilsIframe(iframe).getApiKey();
    }
    return _apiKey;
  }

  @override
  Future<List<FighterDtoFightHistory>> getFights(String query, int page) async {
    try {
      final provider = UfcFighterPageParserProvider("$_ufcUrl?page=$page");
      final parser = await provider.request();

      if (parser != null) {
        return provider.getFights(parser);
      }

      throw const ServerFailure("", 404);
    } catch (e) {
      return HandleDioError<List<FighterDtoFightHistory>>(e)();
    }
  }

  @override
  Future<FighterDto> searchByAvatar(String query, String avatar) async {
    try {
      final response = await _makeSearchRequest(query);
      final athlete = response.athleteByAvatar(avatar);

      if (athlete?.cUFcLink.isNotEmpty == true) {
        _ufcUrl = athlete!.cUFcLink;
        final ufcFighter =
            await UfcFighterPageParserProvider(athlete.cUFcLink, logger: logger)
                .getFighter();
        final fighter = response.toFighterByAvatar(avatar);

        if (fighter != null) {
          return fighter.joinBy(ufcFighter);
        }
      }

      throw const ServerFailure("", 404);
    } on Failure {
      rethrow;
    } catch (e) {
      return HandleDioError<FighterDto>(e)();
    }
  }

  Future<UfcSearchResponseDto> _makeSearchRequest(String query) async {
    final apiKey = await getApiKey();

    final response = await api.client(baseUrl: _searchBaseUrl).searchFighter(
          query,
          "answers-ru",
          apiKey,
          "20220511",
          "PRODUCTION",
        );
    return response;
  }
}
