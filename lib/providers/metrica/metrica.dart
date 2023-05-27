import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:injectable/injectable.dart';

import '../../env.dart';
import '../logger/logger_provider.dart';

@LazySingleton()
class Metrica {
  final LoggerProvider loggerProvider;
  Metrica(this.loggerProvider);
  bool _inited = false;

  Future<void> init() async {
    if (!_inited) {
      final key = metricsKey;
      await AppMetrica.activate(AppMetricaConfig(key));
    }

    _inited = true;
  }

  Future<void> reportEventWithMap(String eventName,
      {Map<String, Object> attr = const {}}) async {
    if (!_inited) {
      await init();
    }
    await AppMetrica.reportEventWithMap(eventName, {
      ...attr,
    });

    loggerProvider.i("Sending a report to metrics $eventName");
  }
}
