import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:timezone/data/latest_10y.dart';
import 'package:watch_sports/providers/event_notifications/event_notifications_provider.dart';
import 'package:watch_sports/providers/local_notifications/local_notifications.dart';
import 'setup.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() async {
  $initGetIt(getIt);
  await dotenv.load(fileName: ".env");
  initializeTimeZones();
  await getIt<LocalNotifications>().init();
  getIt<EventNotificationsProvider>().init();
}

bool get isProduction {
  final mode = dotenv.maybeGet("MODE")?.toLowerCase() ?? "";
  return mode.contains("prod");
}
