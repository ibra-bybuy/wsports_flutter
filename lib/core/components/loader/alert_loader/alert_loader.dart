import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';

import '../../../../i18n/i18n.dart';

@LazySingleton()
class AlerLoader {
  void show({
    String? title,
    bool darkenBackground = false,
  }) {
    EasyLoading.show(
      status: title ?? "${localizationInstance.loading}...",
      maskType: darkenBackground
          ? EasyLoadingMaskType.black
          : EasyLoadingMaskType.none,
    );
  }

  void dismiss() {
    EasyLoading.dismiss();
  }
}
