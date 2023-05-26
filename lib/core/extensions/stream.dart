import 'package:watch_sports/core/api/models/lang.dart';

import '../api/models/stream.dart';
import '../models/stream.dart';

extension StreamExt on Stream {
  StreamApi toStreamApi() {
    return StreamApi(
      langApi: LangApi(name: lang),
      link: url,
    );
  }
}
