import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkTheme {
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

  Color appBarColor = const Color.fromARGB(255, 42, 42, 42);
  Color iconColor = const Color.fromARGB(255, 225, 225, 225);

  ThemeData getTheme() => ThemeData(
        primarySwatch: primaryBlack,
        brightness: Brightness.dark,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.white,
        ),
        canvasColor: Colors.black,
        appBarTheme: AppBarTheme(
          centerTitle: false,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          ),
          backgroundColor: appBarColor,
        ),
        iconTheme: IconThemeData(
          color: iconColor,
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: const Color.fromARGB(255, 73, 72, 72),
          hintStyle: GoogleFonts.roboto(
            color: iconColor,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.roboto(
            color: Colors.white,
          ),
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.white,
          indicatorColor: Color.fromARGB(255, 144, 11, 2),
          unselectedLabelColor: Color.fromARGB(255, 6, 6, 6),
        ),
        dividerColor: const Color.fromARGB(255, 25, 25, 25),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(255, 36, 36, 36),
        ),
      );
}
