import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LightTheme {
  ThemeData getTheme() => ThemeData(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
      );
}
