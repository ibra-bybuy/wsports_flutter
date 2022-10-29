import 'package:flutter_bloc/flutter_bloc.dart';

class StringCubit extends Cubit<String> {
  StringCubit() : super("");

  void set(String title) {
    emit(title);
  }
}
