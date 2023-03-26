import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/functions/launch_url.dart';
import 'package:watch_sports/features/home/presentation/cubits/app_versions/app_versions_state.dart';
import 'package:watch_sports/i18n/i18n.dart';
import 'package:watch_sports/providers/local_notifications/local_notifications.dart';
import '../../../../core/components/alert/cool_alert.dart';
import '../../../../core/models/app_version.dart';
import '../../../../providers/app_update/app_update.dart';
import '../../../../setup.dart';
import '../cubits/app_versions/app_versions_cubit.dart';

class AppVersionListener extends StatefulWidget {
  final Widget child;
  const AppVersionListener({super.key, required this.child});

  @override
  State<AppVersionListener> createState() => _AppVersionListenerState();
}

class _AppVersionListenerState extends State<AppVersionListener> {
  final uiCubit = getIt<AppVersionsCubit>();
  final appUpdate = getIt<AppUpdate>();
  final localNotifications = getIt<LocalNotifications>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      uiCubit.call();
    });
  }

  void _showDialog(BuildContext context, AppVersion version) {
    ShowAlert(
      context,
      type: AlertType.info,
      title: localizationInstance.newVersion,
      body: localizationInstance.newVersionBody,
      confirmBtnText: localizationInstance.update,
      onConfirmed: (ctx) {
        appUpdate.update(
          url: version.url,
          listener: (status, progress) {
            if (status == AppUpdateStatus.error ||
                status == AppUpdateStatus.permissionNotGranted) {
              ShowAlert(
                context,
                title: localizationInstance.error,
                body: status == AppUpdateStatus.error
                    ? localizationInstance.appUpdateError
                    : "${localizationInstance.permissionNotGranted} ${localizationInstance.downloadFromSite}",
                type: AlertType.error,
                onConfirmed: (ctx) {
                  Navigator.of(ctx).pop();
                  launchUrl(version.url);
                },
              ).call();
            }
            if (status == AppUpdateStatus.downloading) {
              localNotifications.showProgress(progress: progress);
            }
          },
        );
      },
    ).call();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppVersionsCubit, AppVersionsState>(
      bloc: uiCubit,
      listener: (context, state) {
        if (state is AppVersionsLoaded) {
          final newVersion = uiCubit.getNewVersion;
          if (newVersion != null) {
            _showDialog(context, newVersion);
          }
        }
      },
      child: widget.child,
    );
  }
}
