import '../api/models/team.dart';
import '../models/team.dart';

extension TeamExt on Team {
  TeamApi toTeamApi() {
    return TeamApi(
      name: name,
      avatarUrl: avatarUrl,
      position: position,
      langApi: lang.code,
    );
  }
}
