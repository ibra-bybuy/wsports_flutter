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

extension AppLocalizationsExt on AppLocalizations {
  bool get isEng => localeName.contains("en");
  bool get isRu => localeName.contains("ru");
}
