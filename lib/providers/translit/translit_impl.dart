import 'package:injectable/injectable.dart';
import 'package:watch_sports/i18n/i18n.dart';
import 'package:watch_sports/providers/translit/translit_provider.dart';
import 'package:translit/translit.dart';

@LazySingleton(as: TranslitProvider)
class TranslitImpl implements TranslitProvider {
  final _translit = Translit();

  @override
  String toLocal(String source, LocalLang lang) {
    if (LocalLang.ru == lang) {
      return _translit.unTranslit(source: source);
    }

    return source;
  }
}
