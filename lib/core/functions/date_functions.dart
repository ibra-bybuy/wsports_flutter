import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import '../../i18n/i18n.dart';

enum LocaleEnum {
  ru("ru_RU"),
  en("en_EN");

  final String value;
  const LocaleEnum(this.value);
}

class DateFunctions {
  final DateTime passedDate;

  DateFunctions({
    required this.passedDate,
  }) {
    initializeDateFormatting();
  }

  String get locale {
    String lang = LocaleEnum.ru.value;
    if (localizationInstance.isEng) {
      lang = LocaleEnum.en.value;
    }

    return lang;
  }

  bool isThisYear() =>
      passedDate.toLocal().year == DateTime.now().toLocal().year;

  bool isThisMonth() =>
      passedDate.toLocal().month == DateTime.now().toLocal().month;

  bool isThisDay() => passedDate.toLocal().day == DateTime.now().toLocal().day;

  bool isDaysAgo(int days) =>
      passedDate.toLocal().day == DateTime.now().toLocal().day - days;

  bool isYesterday() => isThisYear() && isThisMonth() && isDaysAgo(1);

  bool isToday() => isThisYear() && isThisMonth() && isThisDay();

  String yearMonthDay() {
    return passedDate.toString().split(" ")[0];
  }

  String dayMonthYear() {
    DateFormat formatter = DateFormat.yMMMMd(locale);

    return formatter.format(passedDate);
  }

  String dayMonthYearHuman() {
    if (isToday()) return localizationInstance.today;

    return dayMonthYear();
  }

  String hourMinute() => DateFormat("HH:mm").format(passedDate.toLocal());

  String displayDate() {
    if (isToday()) {
      return hourMinute();
    }
    return "${dayMonthYear()}  ${hourMinute()}";
  }

  String displayTimeForTodayOrDate() {
    if (isToday()) {
      return hourMinute();
    }
    return dayMonthYear();
  }

  String dayMonthYearNumbers() {
    DateFormat formatter = DateFormat.yMd(locale);

    return formatter.format(passedDate);
  }
}
