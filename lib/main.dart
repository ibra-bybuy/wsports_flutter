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

import 'app.dart';
import 'core/cubits/cached/lang/lang_cubit.dart';
import 'core/cubits/cached/lang/lang_state.dart';
import 'i18n/i18n.dart';
import 'router/app_router.dart';
import 'setup.dart';
import 'themes/light.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );

  HydratedBlocOverrides.runZoned(
    () async {
      await configureDependencies();

      runApp(
        Phoenix(child: const MyApp()),
      );
    },
    storage: storage,
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

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    _appRouter = getIt<AppRouter>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CachedLangCubit, LangState>(
      bloc: langCubit,
      builder: (context, state) {
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
          theme: LightTheme().getTheme(),
          themeMode: ThemeMode.light,
          builder: EasyLoading.init(),
          locale: I18n.getLocaleByCode(state.langCode),
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
