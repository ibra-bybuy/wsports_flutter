import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:url_launcher/url_launcher_string.dart';
import 'package:watch_sports/providers/logger/logger_provider.dart';

import '../../setup.dart';

Future<void> launchUrl(String url) async {
  final uri = Uri.tryParse(url);

  try {
    if (uri != null && await url_launcher.canLaunchUrl(uri)) {
      url_launcher.launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  } catch (e) {
    getIt<LoggerProvider>().e("CAN NOT LAUNCH $url");
  }
}
