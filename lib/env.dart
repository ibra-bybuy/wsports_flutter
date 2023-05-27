import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> loadEnv() async {
  await dotenv.load(fileName: ".env");
}

bool get isProduction {
  final mode = dotenv.maybeGet("MODE")?.toLowerCase() ?? "";
  return mode.contains("prod");
}

String get appBaseUrl {
  return dotenv.maybeGet("APP_BASE_URL")?.toLowerCase() ?? "";
}
