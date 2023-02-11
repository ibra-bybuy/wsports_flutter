import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/extensions/string.dart';
import 'package:watch_sports/providers/emoji/emoji_provider.dart';

import '../../core/enum/flags.dart';

@LazySingleton(as: EmojiProvider)
class EmojiImpl implements EmojiProvider {
  final _parser = EmojiParser();

  @override
  String getEmojiByCountry(String countryName) {
    countryName = countryName.split(":")[0];

    final names = List<String>.from([countryName.firstWord])
      ..addAll(countryName
          .split(" ")
          .where((element) => element.length > 5)
          .toList());

    for (final name in names) {
      final flag = FlagEnum.getByAlias(name);
      if (flag != null) {
        String code = _parser.get(":flag-${flag.code}:").code;
        if (code.isNotEmpty) {
          return code;
        }
      }
    }
    return "";
  }
}
