import 'package:injectable/injectable.dart';
import 'package:ota_update/ota_update.dart';
import 'package:watch_sports/core/extensions/ota_status.dart';
import 'package:watch_sports/providers/app_update/app_update.dart';

@Injectable(as: AppUpdate)
class OtaUpdateImpl implements AppUpdate {
  @override
  void update({
    required String url,
    void Function(AppUpdateStatus, int)? listener,
    void Function(Object)? onException,
  }) async {
    try {
      OtaUpdate().execute(url).listen(
        (OtaEvent event) {
          final precents = int.tryParse(event.value ?? "0") ?? 0;

          listener?.call(event.status.toLocal, precents);
        },
      );
    } catch (e) {
      onException?.call(e);
    }
  }
}
