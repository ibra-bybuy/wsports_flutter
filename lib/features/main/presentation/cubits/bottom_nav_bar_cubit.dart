import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class BottomNavBarCubit extends Cubit<int> {
  final pageController = PageController();
  BottomNavBarCubit() : super(0);

  int get currentPage => state;

  void setNewPage(int newPage) {
    pageController.jumpToPage(newPage);
    emit(newPage);
  }
}
