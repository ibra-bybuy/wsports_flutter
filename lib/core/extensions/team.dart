import 'package:watch_sports/core/api/models/lang.dart';

import '../api/models/team.dart';
import '../models/team.dart';

extension TeamExt on Team {
  TeamApi toTeamApi() {
    return TeamApi(
      name: name,
      avatarUrl: avatarUrl,
      position: position,
      langApi: LangApi(code: lang.code),
    );
  }
}
