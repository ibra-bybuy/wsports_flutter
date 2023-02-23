import '../api/models/stream.dart';
import '../models/stream.dart';

extension StreamExt on Stream {
  StreamApi toStreamApi() {
    return StreamApi(
      lang: lang,
      link: url,
    );
  }
}
