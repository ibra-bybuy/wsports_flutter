import '../models/fight.dart';
import '../models/team.dart';

extension FightHistoryItemExt on FightHistoryItem {
  Team toTeam() {
    return Team(
      name: name,
      avatarUrl: picture,
    );
  }
}
