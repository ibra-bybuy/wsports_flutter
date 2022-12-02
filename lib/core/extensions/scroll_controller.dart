import 'package:flutter/material.dart';

extension ScrollControllerExt on ScrollController {
  bool get isScrolledToBottom {
    return position.pixels == position.maxScrollExtent;
  }
}
