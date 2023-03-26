import 'package:app_settings/app_settings.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/cubits/cached/lang/lang_state.dart';
import 'package:watch_sports/core/cubits/cached/user_cubit/user_cubit.dart';
import 'package:watch_sports/core/cubits/custom/bool_cubit/bool_cubit.dart';
import 'package:watch_sports/core/functions/pick_image.dart';
import 'package:watch_sports/features/profile/presentation/screens/settings_screen.dart';
import 'package:watch_sports/i18n/i18n.dart';
import 'package:watch_sports/providers/local_notifications/local_notifications.dart';
import 'package:watch_sports/router/app_router.dart';

import '../../../../core/components/app_bar/main_app_bar.dart';
import '../../../../core/components/image/cached_avatar/cached_avatar.dart';
import '../../../../core/components/lifecycles/lifecycle_handler.dart';
import '../../../../core/components/settings/settings_wrapper.dart';
import '../../../../core/components/taps/ink_well_circle.dart';
import '../../../../core/cubits/cached/lang/lang_cubit.dart';
import '../../../../setup.dart';
import '../widgets/change_name_dialog.dart';
import '../widgets/user_builder.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with AutomaticKeepAliveClientMixin {
  final appRouter = getIt<AppRouter>();
  final userCubit = getIt<UserCubit>();
  final localNotifications = getIt<LocalNotifications>();
  final langCubit = getIt<CachedLangCubit>();
  final notificationsCubit = BoolCubit(true);

  @override
  void initState() {
    super.initState();
    localNotifications.init();

    WidgetsBinding.instance.addObserver(LifecycleEventHandler(
      resumeCallBack: () async {
        await localNotifications.requestPermission();
      },
    ));

    localNotifications.listenToPermission((result) {
      notificationsCubit.set(result);
    });
  }

  Future<void> pickImage() async {
    final image = await PickImage().call();
    if (image != null) {
      userCubit.setUser(
        userCubit.state.user?.copyWith(avatar: image.path),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: MainAppBar(
        centerTitle: true,
        children: [
          UserBuilder(
            buildWhen: (prev, curr) => prev.user?.name != curr.user?.name,
            builder: (context, state) {
              return GoogleText(
                userCubit.name,
                color: Colors.black,
              );
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWellCircle(
              onTap: pickImage,
              child: UserBuilder(
                builder: (context, state) {
                  return CachedCircleAvatar(
                    avatarWidth: 120,
                    avatarHeight: 120,
                    url: userCubit.user.avatar,
                    name: userCubit.name,
                  );
                },
              ),
            ),
            const SizedBox(height: 20.0),
            BlocBuilder<BoolCubit, bool>(
              bloc: notificationsCubit,
              builder: (context, notificationsOn) {
                return SettingsWrapper(
                  sections: [
                    SettingsSection(
                      title: Text(localizationInstance.basicSettings),
                      tiles: [
                        SettingsTile.navigation(
                          leading: const Icon(Icons.edit),
                          title: Text(localizationInstance.nameHint),
                          onPressed: (context) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return const SettingChangeNameDialog();
                              },
                            );
                          },
                          value: UserBuilder(
                            buildWhen: (prev, curr) =>
                                prev.user?.name != curr.user?.name,
                            builder: (context, state) {
                              return Text(userCubit.name);
                            },
                          ),
                        ),
                        SettingsTile.navigation(
                          leading: const Icon(Icons.image),
                          title: Text(localizationInstance.changeUserPic),
                          onPressed: (_) => pickImage(),
                        ),
                        if (!notificationsCubit.state) ...[
                          SettingsTile.switchTile(
                            onToggle: (value) async {
                              await AppSettings.openNotificationSettings();
                            },
                            initialValue: notificationsOn,
                            leading: const Icon(Icons.notifications),
                            title: Text(localizationInstance.notifications),
                          ),
                        ],
                        SettingsTile.navigation(
                          leading: const Icon(Icons.language),
                          title: Text(localizationInstance.language),
                          value: BlocBuilder<CachedLangCubit, LangState>(
                            bloc: langCubit,
                            builder: (context, state) {
                              return Text(localizationInstance.lang.name);
                            },
                          ),
                          onPressed: (_) {
                            appRouter.push(
                              SettingsRoute(
                                title: localizationInstance.language,
                                items: LocalLang.values
                                    .map((e) => SettinsItem(e.code, e.name))
                                    .toList(),
                                onTap: (context, itemCode) {
                                  Navigator.of(context)
                                      .popUntil((route) => route.isFirst);
                                  langCubit.setLangCode(itemCode);
                                  Phoenix.rebirth(context);
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
