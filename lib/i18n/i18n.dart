import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../app.dart';

class I18n {
  static final supportedLocales = [
    const Locale('ru'),
    const Locale('en'),
  ];

  static LocalizationsDelegate<AppLocalizations> get delegate =>
      AppLocalizations.delegate;
}

AppLocalizations get localizationInstance =>
    AppLocalizations.of(App.scaffoldKey!.currentContext!)!;

enum LocalLang { ru, eng, undefined }

extension AppLocalizationsExt on AppLocalizations {
  bool get isEng => localeName.contains("en");
  bool get isRu => localeName.contains("ru");

  LocalLang get lang {
    if (isEng) {
      return LocalLang.eng;
    } else if (isRu) {
      return LocalLang.ru;
    } else {
      return LocalLang.undefined;
    }
  }
}
