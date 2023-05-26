import 'package:watch_sports/core/extensions/stream.dart';
import 'package:watch_sports/core/extensions/team.dart';

import '../../i18n/i18n.dart';
import '../api/models/event.dart';
import '../constants/urls.dart';
import '../models/event.dart';

extension EventExt on Event {
  EventApi toEventApi() {
    return EventApi(
      id: id,
      name: name,
      startAt: startTime,
      endAt: endTime,
      teams: teams.map((e) => e.toTeamApi()).toList(),
      sport: type,
      hideElements: hideElements,
      streams: streams.map((e) => e.toStreamApi()).toList(),
    );
  }

  String toLink() {
    return Uri.encodeFull("$name,$startTime");
  }

  String get shareTxt {
    if (isMma) {
      return "${localizationInstance.watch} $name ${localizationInstance.fromTheLink.toLowerCase()} ${Urls.domain}/event/${toLink()}";
    }

    return "${localizationInstance.watch} ${localizedTeams.map((e) => e.name).join(" vs ")} ${localizationInstance.fromTheLink.toLowerCase()} ${Urls.domain}/event/${toLink()}";
  }
}
