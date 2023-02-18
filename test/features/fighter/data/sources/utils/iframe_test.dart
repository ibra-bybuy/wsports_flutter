import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:watch_sports/features/fighter/data/sources/utils/iframe.dart';

void main() {
  test("Loading api key from iframe js file", () async {
    final file = File("test/features/fighter/data/sources/utils/iframe.js");
    final str = await file.readAsString();

    final apiKey = FighterUtilsIframe(str).getApiKey();

    expect(apiKey.length, isNot(0));
  });
}
