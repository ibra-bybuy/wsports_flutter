import 'package:watch_sports/features/fighter/data/models/fighter_dto.dart';
import 'package:watch_sports/features/fighter/data/models/ufc_search_response_dto.dart';

extension UfcSearchResponseExt on UfcSearchResponseDto {
  List<UfcSearchResponseDtoResponseModulesResultsData> get getAthletes {
    return response.modules
        .where((e) => e.verticalConfigId.toLowerCase().contains("athlete"))
        .map((e) => e.results)
        .expand((element) => element)
        .map((e) => e.data)
        .toList();
  }

  FighterDto? toFighter(String opponentName) {
    final athlete = getAthletes.getAthleteByOpponentName(opponentName);

    if (athlete != null) {
      return athlete.toFighter();
    }

    return null;
  }
}

extension UfcSearchResponseDtoResponseModulesResultsDataListExt
    on List<UfcSearchResponseDtoResponseModulesResultsData> {
  UfcSearchResponseDtoResponseModulesResultsData? getAthleteByOpponentName(
      String opponentName) {
    for (final athelete in this) {
      final names = athelete.cLinkedFights.map((e) => e.name).toSet().join(",");
      if (names.contains(opponentName)) {
        return athelete;
      }
    }

    return null;
  }
}

extension UfcSearchResponseDtoResponseModulesResultsDataExt
    on UfcSearchResponseDtoResponseModulesResultsData {
  FighterDto toFighter() {
    return FighterDto(
      firstName: firstName,
      lastName: lastName,
      birthDate: cDOb,
      pictures: cPhoto.thumbnails.map((e) => e.url).toList(),
      wins: int.tryParse(cRecordWins) ?? 0,
      losses: int.tryParse(cRecordLosses) ?? 0,
      draws: int.tryParse(cRecordDraws) ?? 0,
      noContests: int.tryParse(cRecordNoContests) ?? 0,
      country: cHomeCountry,
      heightInches: num.tryParse(cHeight) ?? 0,
      nickname: cNickname,
      weightPounds: num.tryParse(cWeight) ?? 0,
      gender: gender,
      reach: num.tryParse(cReach) ?? 0,
    );
  }
}
