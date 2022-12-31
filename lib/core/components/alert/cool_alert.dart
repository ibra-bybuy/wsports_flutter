import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';

enum AlertType { info, success, error, warning, loading }

class ShowAlert {
  final BuildContext context;
  final AlertType type;
  final String title;
  final String body;
  final String confirmBtnText;
  final void Function()? onConfirmed;
  final bool barrierDismissible;
  const ShowAlert(
    this.context, {
    this.title = "",
    this.body = "",
    this.type = AlertType.info,
    this.confirmBtnText = 'Ok',
    this.onConfirmed,
    this.barrierDismissible = true,
  });

  void call() {
    CoolAlert.show(
      context: context,
      type: convertedType,
      title: title,
      text: body,
      confirmBtnText: confirmBtnText,
      onConfirmBtnTap: onConfirmed,
      barrierDismissible: barrierDismissible,
    );
  }

  CoolAlertType get convertedType {
    switch (type) {
      case AlertType.info:
        return CoolAlertType.info;
      case AlertType.success:
        return CoolAlertType.success;
      case AlertType.error:
        return CoolAlertType.error;
      case AlertType.warning:
        return CoolAlertType.warning;
      case AlertType.loading:
        return CoolAlertType.loading;
    }
  }
}
