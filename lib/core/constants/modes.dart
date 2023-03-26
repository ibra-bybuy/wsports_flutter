import 'package:flutter/material.dart';

enum Modes {
  light(ThemeMode.light),
  dark(ThemeMode.dark);

  final ThemeMode mode;
  const Modes(this.mode);
}
