import 'package:ota_update/ota_update.dart';
import 'package:watch_sports/providers/app_update/app_update.dart';

extension OtaStatusExt on OtaStatus {
  AppUpdateStatus get toLocal {
    switch (this) {
      case OtaStatus.ALREADY_RUNNING_ERROR:
        return AppUpdateStatus.error;
      case OtaStatus.CHECKSUM_ERROR:
        return AppUpdateStatus.error;
      case OtaStatus.DOWNLOADING:
        return AppUpdateStatus.downloading;
      case OtaStatus.DOWNLOAD_ERROR:
        return AppUpdateStatus.error;
      case OtaStatus.INSTALLING:
        return AppUpdateStatus.installing;
      case OtaStatus.INTERNAL_ERROR:
        return AppUpdateStatus.error;
      case OtaStatus.PERMISSION_NOT_GRANTED_ERROR:
        return AppUpdateStatus.permissionNotGranted;
    }
  }
}
