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

  static Locale? getLocaleByCode(String code) {
    for (final local in supportedLocales) {
      if (code.toLowerCase().contains(local.languageCode.toLowerCase())) {
        return local;
      }
    }

    return null;
  }
}

AppLocalizations get localizationInstance =>
    AppLocalizations.of(App.scaffoldKey!.currentContext!)!;

enum LocalLang {
  ru("ru", "Русский"),
  eng("en", "English"),
  undefined("", "");

  final String code;
  final String name;
  const LocalLang(this.code, this.name);

  static LocalLang getByString(String val) {
    for (final l in LocalLang.values) {
      if (l.code == val) {
        return l;
      }
    }

    return LocalLang.eng;
  }
}

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
