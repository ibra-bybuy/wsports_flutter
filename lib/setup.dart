import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
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
  await getIt<LocalNotifications>().init();
}
