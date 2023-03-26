import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:watch_sports/core/cubits/cached/mode/mode_cubit.dart';
import 'package:watch_sports/core/extensions/theme_mode.dart';
import 'package:watch_sports/themes/dark.dart';

import 'app.dart';
import 'core/cubits/cached/lang/lang_cubit.dart';
import 'core/cubits/cached/lang/lang_state.dart';
import 'core/cubits/cached/mode/mode_state.dart';
import 'i18n/i18n.dart';
import 'router/app_router.dart';
import 'setup.dart';
import 'themes/light.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );

  await configureDependencies();

  runApp(
    Phoenix(child: const MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppRouter _appRouter;
  final langCubit = getIt<CachedLangCubit>();
  final modeCubit = getIt<ModeCubit>();

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    _appRouter = getIt<AppRouter>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ModeCubit, ModeState>(
      bloc: modeCubit,
      builder: (context, themeModeState) {
        return BlocBuilder<CachedLangCubit, LangState>(
          bloc: langCubit,
          builder: (context, langState) {
            return MaterialApp.router(
              routerDelegate: _appRouter.delegate(),
              routeInformationParser: _appRouter.defaultRouteParser(),
              scaffoldMessengerKey: App.scaffoldKey,
              title: 'Watch sports',
              debugShowCheckedModeBanner: false,
              localizationsDelegates: [
                I18n.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: I18n.supportedLocales,
              theme: themeModeState.mode.isDarkMode
                  ? DarkTheme().getTheme()
                  : LightTheme().getTheme(),
              themeMode: themeModeState.mode,
              builder: EasyLoading.init(),
              locale: I18n.getLocaleByCode(langState.langCode),
            );
          },
        );
      },
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
