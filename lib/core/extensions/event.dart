import 'package:watch_sports/core/extensions/stream.dart';
import 'package:watch_sports/core/extensions/team.dart';

import '../api/models/event.dart';
import '../models/event.dart';

extension EventExt on Event {
  EventApi toEventApi() {
    return EventApi(
      id: int.tryParse(id) ?? 0,
      name: name,
      startTime: startTime,
      endTime: endTime,
      teams: teams.map((e) => e.toTeamApi()).toList(),
      type: type,
      streams: streams.map((e) => e.toStreamApi()).toList(),
    );
  }
}
