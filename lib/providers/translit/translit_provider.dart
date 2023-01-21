import '../../i18n/i18n.dart';

abstract class TranslitProvider {
  String toLocal(
    String source,
    LocalLang lang,
  );
}
