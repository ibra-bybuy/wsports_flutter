import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/api/main_api.dart';
import 'package:watch_sports/core/errors/failures.dart';
import 'package:watch_sports/core/extensions/ufc_search_response.dart';
import 'package:watch_sports/features/fighter/data/models/fighter_dto.dart';
import 'package:watch_sports/features/fighter/data/sources/utils/iframe.dart';
import '../../../../core/errors/handle_dio_error.dart';
import '../../../../providers/ufc/fighter_page_parser_provider.dart';
import 'fighter_source.dart';

const _iframeBaseUrl = 'https://answers-embed-client.ufc.com.pagescdn.com';
const _searchBaseUrl = "https://liveapi.yext.com/v2";

@LazySingleton(as: FighterSource)
class FighterUFCSource implements FighterSource {
  final MainApi api;
  FighterUFCSource(this.api);

  String _ufcUrl = "";

  @override
  Future<FighterDto> searchFighter(String name, String opponentName) async {
    try {
      final apiKey = await getApiKey();

      final response = await api.client(baseUrl: _searchBaseUrl).searchFighter(
            name,
            "answers-ru",
            apiKey,
            "20220511",
            "PRODUCTION",
          );

      final athlete = response.athlete(opponentName);
      if (athlete?.cUFcLink.isNotEmpty == true) {
        _ufcUrl = athlete!.cUFcLink;
        final ufcFighter =
            await UfcFighterPageParserProvider(athlete.cUFcLink).getFighter();
        final fighter = response.toFighter(opponentName);

        if (fighter != null) {
          return fighter.copyWith(
            winsByKo: ufcFighter?.winsByKo,
            winsByDec: ufcFighter?.winsByDec,
            winsBySub: ufcFighter?.winsBySub,
            allStrikes: ufcFighter?.allStrikes,
            landedStrikes: ufcFighter?.landedStrikes,
            allTakeDowns: ufcFighter?.allTakeDowns,
            landedTakeDowns: ufcFighter?.landedTakeDowns,
            fightHistory: ufcFighter?.fightHistory,
          );
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
    final iframe = await api.client(baseUrl: _iframeBaseUrl).getUfcIframe();
    final apiKey = FighterUtilsIframe(iframe).getApiKey();
    return apiKey;
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
}
