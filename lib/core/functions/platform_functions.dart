import 'dart:io';

bool get isMacOS => Platform.isMacOS;

bool get isDesktop =>
    Platform.isMacOS || Platform.isLinux || Platform.isWindows;
