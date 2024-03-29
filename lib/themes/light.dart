import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme {
  static const MaterialColor primaryBlack = MaterialColor(
    _blackPrimaryValue,
    <int, Color>{
      50: Color(0xFF000000),
      100: Color(0xFF000000),
      200: Color(0xFF000000),
      300: Color(0xFF000000),
      400: Color(0xFF000000),
      500: Color(_blackPrimaryValue),
      600: Color(0xFF000000),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );
  static const int _blackPrimaryValue = 0xFF000000;
  Color iconColor = Colors.black;

  ThemeData getTheme() => ThemeData(
        primarySwatch: primaryBlack,
        brightness: Brightness.light,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
          backgroundColor: Colors.white,
        ),
        iconTheme: IconThemeData(
          color: iconColor,
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: const Color(0XFFF3F4F5),
          hintStyle: GoogleFonts.roboto(
            color: Colors.black,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.roboto(
            color: Colors.black,
          ),
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: Color(0XFF000000),
          unselectedLabelColor: Color(0XFFF3F4F5),
        ),
        dividerColor: const Color(0XFFE4E5E5),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
        ),
      );
}
