import 'package:chaleno/chaleno.dart';
import 'package:watch_sports/features/fighter/data/models/fighter_dto.dart';

class UfcFighterPageParserProvider {
  final String url;
  const UfcFighterPageParserProvider(this.url);

  Future<FighterDto?> getFighter() async {
    final page = await request();

    if (page != null) {
      final fighter = FighterDto(
        firstName: _getFirstName(page),
        lastName: _getLastName(page),
        nickname: _getNickname(page),
        wins: _getWins(page),
        losses: _getLosses(page),
        draws: _getDraws(page),
        landedStrikes: _getLandedStrikes(page),
        allStrikes: _getAllStrikes(page),
        landedTakeDowns: _getLandedTakeDowns(page),
        allTakeDowns: _getAllTakeDowns(page),
        winsByKo: _getWinsByKo(page),
        winsByDec: _getWinsByDec(page),
        winsBySub: _getWinsBySub(page),
        fightHistory: getFightsHistory(page),
      );

      return fighter;
    }

    return null;
  }

  Future<Parser?> request() async {
    return await Chaleno().load(url);
  }

  String _getNickname(Parser page) {
    final titles = page.getElementsByClassName("hero-profile__nickname");
    if (titles.isNotEmpty) {
      return titles.first.text?.replaceAll("\"", "") ?? "";
    }

    return "";
  }

  String _getFirstName(Parser page) {
    final fullName = _getFullName(page);

    return fullName.split(" ")[0];
  }

  String _getLastName(Parser page) {
    final fullName = _getFullName(page);
    final splitted = fullName.split(" ");

    if (splitted.length > 1) {
      int i = 0;
      return splitted.where((element) {
        if (i != 0) {
          return true;
        }
        i++;

        return false;
      }).join(" ");
    }

    return "";
  }

  String _getFullName(Parser page) {
    final titles = page.getElementsByClassName("hero-profile__name");
    if (titles.isNotEmpty) {
      return titles.first.text ?? "";
    }

    return "";
  }

  int _getWins(Parser page) {
    final body = _winBody(page);
    final split = body.split("-");

    return int.tryParse(split.first) ?? 0;
  }

  int _getLosses(Parser page) {
    final body = _winBody(page);
    final split = body.split("-");

    if (split.length >= 2) {
      return int.tryParse(split[1]) ?? 0;
    }

    return 0;
  }

  int _getDraws(Parser page) {
    final body = _winBody(page);
    final split = body.split("-");

    if (split.length >= 3) {
      return int.tryParse(split[2]) ?? 0;
    }

    return 0;
  }

  String _winBody(Parser page) {
    final titles = page.getElementsByClassName("hero-profile__division-body");
    if (titles.isNotEmpty) {
      return titles.first.text ?? "";
    }

    return "";
  }

  int _getLandedStrikes(Parser page) {
    final stats = _getOverlapStats(page);

    if (stats.isNotEmpty) {
      return int.tryParse(stats.first) ?? 0;
    }

    return 0;
  }

  int _getAllStrikes(Parser page) {
    final stats = _getOverlapStats(page);

    if (stats.length >= 2) {
      return int.tryParse(stats[1]) ?? 0;
    }

    return 0;
  }

  int _getLandedTakeDowns(Parser page) {
    final stats = _getOverlapStats(page);

    if (stats.length >= 3) {
      return int.tryParse(stats[2]) ?? 0;
    }

    return 0;
  }

  int _getAllTakeDowns(Parser page) {
    final stats = _getOverlapStats(page);

    if (stats.length >= 4) {
      return int.tryParse(stats[3]) ?? 0;
    }

    return 0;
  }

  List<String> _getOverlapStats(Parser page) {
    final titles = page.getElementsByClassName("c-overlap__stats-value");

    return titles.map((e) => e.text ?? "").toList();
  }

  int _getWinsByKo(Parser page) {
    final stats = _getBarStats(page);

    if (stats.length >= 4) {
      return int.tryParse(stats[3]) ?? 0;
    }

    return 0;
  }

  int _getWinsByDec(Parser page) {
    final stats = _getBarStats(page);

    if (stats.length >= 5) {
      return int.tryParse(stats[4]) ?? 0;
    }

    return 0;
  }

  int _getWinsBySub(Parser page) {
    final stats = _getBarStats(page);

    if (stats.length >= 6) {
      return int.tryParse(stats[5]) ?? 0;
    }

    return 0;
  }

  List<String> _getBarStats(Parser page) {
    final titles = page.getElementsByClassName("c-stat-3bar__value");

    return titles.map((e) {
      final sep = e.text?.split(" ") ?? [""];
      return sep.first;
    }).toList();
  }

  List<FighterDtoFightHistory> getFightsHistory(Parser page) {
    List<FighterDtoFightHistory> history = getFights(page);

    return history;
  }

  List<FighterDtoFightHistory> getFights(Parser page) {
    List<FighterDtoFightHistory> fights = [];
    final events = page
        .querySelectorAll('.l-listing__item .c-card-event--athlete-results');

    for (final event in events) {
      final date =
          event.querySelector(".c-card-event--athlete-results__date")?.text ??
              "";

      final eventStats = event
          .querySelectorAll(
              '.c-card-event--athlete-results__result .c-card-event--athlete-results__result-text')
          ?.map((e) => e.text ?? "")
          .toList();

      final lastRound = eventStats?.isNotEmpty == true
          ? int.tryParse(eventStats!.first) ?? 0
          : 0;

      final time =
          eventStats != null && eventStats.length >= 2 ? eventStats[1] : "";

      final method =
          eventStats != null && eventStats.length >= 3 ? eventStats[2] : "";

      final names = event
              .querySelector(".c-card-event--athlete-results__headline")
              ?.text
              ?.split(" ") ??
          [""];
      final redCornerName = names.first;
      final blueCornerName = names.length >= 3 ? names[2] : "";
      final redCornerImgSelector =
          event.querySelector(".c-card-event--athlete-results__red-image");

      final blueCornerSelector =
          event.querySelector(".c-card-event--athlete-results__blue-image");

      final redCornerImage =
          redCornerImgSelector?.querySelector("img")?.src ?? "";
      final blueCornerImage =
          blueCornerSelector?.querySelector("img")?.src ?? "";

      final redWon =
          redCornerImgSelector?.querySelector(".win")?.text?.isNotEmpty ??
              false;
      final blueWon =
          blueCornerSelector?.querySelector(".win")?.text?.isNotEmpty ?? false;

      fights.add(FighterDtoFightHistory(
        date: date,
        lastRound: lastRound,
        time: time,
        byMethod: method,
        fighters: [
          // RED FIGHTER
          FighterDtoFightHistoryFighters(
            picture: redCornerImage,
            name: redCornerName,
            won: redWon,
          ),

          // BLUE CORNER
          FighterDtoFightHistoryFighters(
            picture: blueCornerImage,
            name: blueCornerName,
            won: blueWon,
          ),
        ],
      ));
    }

    return fights;
    // final winImages = page.getElementAttribute(
    //     '.c-card-event--athlete-results__plaque + div img', 'src');
    // print(winImages);

    // List<FighterDtoFightHistory> fights = [];
    // List<String> dates =
    //     page.getElementTitle(".c-card-event--athlete-results__date");
    // List<String?> redCornersImg = page.getElementAttribute(
    //     ".c-card-event--athlete-results__red-image img", 'src');
    // List<String?> blueCornersImg = page.getElementAttribute(
    //     ".c-card-event--athlete-results__blue-image img", 'src');

    // List<String> names =
    //     page.getElementTitle('.c-card-event--athlete-results__headline');

    // for (int i = 0; i < dates.length; i++) {
    //   final splitNames = names.length > i ? names[i].split(" ") : [""];
    //   final redCornerName = splitNames.first;
    //   final blueCornerName = splitNames.length >= 3 ? splitNames[2] : "";

    //   fights.add(
    //     FighterDtoFightHistory(
    //       date: dates[i],
    //       fighters: [
    //         // RED FIGHTER
    //         FighterDtoFightHistoryFighters(
    //           picture: redCornersImg.length > i ? redCornersImg[i] ?? "" : "",
    //           name: redCornerName,
    //         ),

    //         // BLUE CORNER
    //         FighterDtoFightHistoryFighters(
    //           picture: blueCornersImg.length > i ? blueCornersImg[i] ?? "" : "",
    //           name: blueCornerName,
    //         ),
    //       ],
    //     ),
    //   );
    // }
    // return fights;
  }
}
